---
slug: ct-fuzz
title: ct-fuzz
description: "ct-fuzz: Fuzzing for timing leaks"
year: 2020
target: LLVM IR
technique: Dynamic
guarantees: "no"
available: true
repo: https://github.com/michael-emmi/ct-fuzz
papers:
 - name: "ct-fuzz: Fuzzing for timing leaks"
   link: https://doi.org/10.1109/ICST46399.2020.00063
---

![GitHub last commit](https://img.shields.io/github/last-commit/michael-emmi/ct-fuzz)![GitHub contributors](https://img.shields.io/github/contributors/michael-emmi/ct-fuzz)![GitHub Repo stars](https://img.shields.io/github/stars/michael-emmi/ct-fuzz)

## Description

**ct-fuzz** takes inspiration from **ct-verif** in its method but diverges
significantly. It first constructs a product program using self-composition of
the target with itself, where it asserts that at each point that the memory
address accessed by the two programs, whether through control from or indexing,
is the same. It then uses a fuzzer against this product program, which splits
its fuzzing input equally into the secret inputs for the two instances or the
original program in the product program. If the fuzzer detects a failed assert,
leakage is detected, as it found two runs through the target, which differ only
in secret inputs yet access different offsets in memory.

## Abstract

Testing-based methodologies like fuzzing are able to analyze complex software
which is not amenable to traditional formal approaches like verification, model
checking, and abstract interpretation. Despite enormous success a texposing
countless security vulnerabilities in many popular software projects,
applications of testing-based approaches mainly targeted checking traditional
safety properties like memory safety. While unquestionably important, this
class of properties does not precisely characterize other important security
aspects such as information leakage, e.g., through side channels. In this work
we extend testing-based software analysis methodologies to two-safety
properties, which enables the precise discovery of information leaks in complex
software. In particular, we present the ct-fuzz tool, which lends
coverage-guided grey box fuzzers the ability to detect two safety property
violations. Our approach is capable of exposing violations to any two-safety
property expressed a sequality between two program traces. Empirically, we
demonstrate that ct-fuzz swiftly reveals timing leaks in popular cryptographic
implementations.