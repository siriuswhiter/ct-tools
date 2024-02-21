---
slug: pitchfork-angr
name: pitchfork-angr
description: "-"
year: 2019
target: Binary
technique: Symbolic
guarantees: "no"
available: true
repo: https://github.com/PLSysSec/pitchfork-angr
---

![GitHub last commit](https://img.shields.io/github/last-commit/PLSysSec/pitchfork-angr)![GitHub contributors](https://img.shields.io/github/contributors/PLSysSec/pitchfork-angr)![GitHub Repo stars](https://img.shields.io/github/stars/PLSysSec/pitchfork-angr)

## Abstract

Pitchfork is a static analysis tool, built on angr, which performs speculative symbolic execution. That is, it not only executes the "correct" or "sequential" paths of a program, but also the "mispredicted" or "speculative" paths, subject to some speculation window size. Pitchfork finds paths where secret data is used in either address calculations or branch conditions (and thus leaked), even speculatively - these paths represent Spectre vulnerabilities. Pitchfork covers Spectre v1, Spectre v1.1, and Spectre v4.
