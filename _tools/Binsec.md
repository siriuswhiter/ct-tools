---
slug: binsec
title: Binsec
description: "Binsec/Rel: Efficient relational symbolic execution for constant-time at binary-level"
year: 2020
target: Binary
technique: Symbolic
guarantees: "sound with restrictions"
available: true
repo: https://github.com/binsec/binsec
site: https://binsec.github.io/
papers:
 - name: "BINSEC: Binary Code Analysis with Low-Level Regions"
   link: https://doi.org/10.1007/978-3-662-46681-0_17
 - name: "Binsec/Rel: Efficient relational symbolic execution for constant-time at binary-level"
   link: https://doi.org/10.1109/SP40000.2020.
---

![GitHub last commit](https://img.shields.io/github/last-commit/binsec/binsec)![GitHub contributors](https://img.shields.io/github/contributors/binsec/binsec)![GitHub Repo stars](https://img.shields.io/github/stars/binsec/binsec)

**Binsec/Rel** is a static analysis tool that works on the binary level, thereby overcoming
issues of compilers inserting non-constant-time code or turning constant-time code into non-constant-time one.
First developed as the *Binsec/Rel* extension to the Binsec tool, later integrated into
the Binsec tool directly. See more at the [CT-checking docs](https://github.com/binsec/binsec/blob/master/doc/sse/relse.md).

## Abstract

The constant-time programming discipline (CT) is an efficient countermeasure against timing
side-channel attacks, requiring the control flow and the memory accesses to be independent
from the secrets. Yet, writing CT code is challenging as it demands to reason about pairs
of execution traces (2-hypersafety property) and it is generally not preserved by the compiler,
requiring binary-level analysis. Unfortunately, current verification tools for CT either
reason at higher level (C or LLVM), or sacrifice bug-finding or bounded-verification, or
do not scale. We tackle the problem of designing an efficient binary-level verification tool
for CT providing both bug-finding and bounded-verification. The technique builds on relational
symbolic execution enhanced with new optimizations dedicated to information flow and binary-level
analysis, yielding a dramatic improvement over prior work based on symbolic execution. We
implement a prototype, BINSEC/REL, and perform extensive experiments on a set of 338 cryptographic
implementations, demonstrating the benefits of our approach in both bug-finding and bounded-verification.
Using BINSEC/REL, we also automate a previous manual study of CT preservation by compilers.
Interestingly, we discovered that `gcc -O0` and backend passes of clang introduce violations of
CT in implementations that were previously deemed secure by a state-of-the-art CT verification
tool operating at LLVM level, showing the importance of reasoning at binary-level.


