#!/usr/bin/env python3
"""Rank hackathon ideas from a JSON score file and print a Markdown table.

Input format:
[
  {
    "name": "Idea name",
    "scores": {"insight": 4, "feasibility": 5},
    "weights": {"insight": 0.2, "feasibility": 0.3},
    "risk": "API dependency",
    "fallback": "Mock response"
  }
]

Weights are optional. If omitted, dimensions are weighted equally.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


def weighted_total(scores: dict[str, float], weights: dict[str, float] | None) -> float:
    if not scores:
        return 0.0
    if not weights:
        return sum(scores.values()) / len(scores)
    weighted_sum = 0.0
    total_weight = 0.0
    for key, score in scores.items():
        weight = float(weights.get(key, 0))
        weighted_sum += float(score) * weight
        total_weight += weight
    return weighted_sum / total_weight if total_weight else sum(scores.values()) / len(scores)


def load_ideas(path: Path) -> list[dict[str, Any]]:
    data = json.loads(path.read_text(encoding="utf-8-sig"))
    if not isinstance(data, list):
        raise ValueError("Input JSON must be a list of idea objects.")
    return data


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("input", type=Path, help="Path to JSON idea score file")
    args = parser.parse_args()

    ideas = load_ideas(args.input)
    ranked = []
    for idea in ideas:
        scores = idea.get("scores") or {}
        weights = idea.get("weights")
        ranked.append((weighted_total(scores, weights), idea))

    ranked.sort(key=lambda item: item[0], reverse=True)

    print("| Rank | Idea | Total | Risk | Fallback |")
    print("|---:|---|---:|---|---|")
    for index, (total, idea) in enumerate(ranked, start=1):
        name = str(idea.get("name", f"Idea {index}")).replace("|", "\\|")
        risk = str(idea.get("risk", "")).replace("|", "\\|")
        fallback = str(idea.get("fallback", "")).replace("|", "\\|")
        print(f"| {index} | {name} | {total:.2f} | {risk} | {fallback} |")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
