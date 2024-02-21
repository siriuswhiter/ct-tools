---
slug: constantine
title: Constantine
description: "Constantine: Automatic side-channel resistance using efficient control and data flow linearization"
year: 2021
target: LLVM IR
technique: Dynamic
guarantees: "sound with restrictions"
available: true
repo: https://github.com/pietroborrello/constantine
papers:
 - name: "Constantine: Automatic side-channel resistance using efficient control and data flow linearization"
   link: https://dl.acm.org/doi/abs/10.1145/3460120.3484583
---

![GitHub last commit](https://img.shields.io/github/last-commit/pietroborrello/constantine)![GitHub contributors](https://img.shields.io/github/contributors/pietroborrello/constantine)![GitHub Repo stars](https://img.shields.io/github/stars/pietroborrello/constantine)

## Abstract

In the era of microarchitectural side channels, vendors scramble to deploy
mitigations for transient execution attacks, but leave traditional side-channel
attacks against sensitive software (e.g., crypto programs) to be fixed by
developers by means of constant-time programming (i.e., absence of
secret-dependent code/data patterns). Unfortunately, writing constant-time code
by hand is hard, as evidenced by the many flaws discovered in production side
channel-resistant code. Prior efforts to automatically transform programs into 
constant-time equivalents offer limited security or compatibility guarantees,
hindering their applicability to real-world software.

In this paper, we present Constantine, a compiler-based system to automatically
harden programs against microarchitectural side channels. Constantine pursues a
radical design point where secret-dependent control and data flows are
completely linearized (i.e., all involved code/data accesses are always
executed). This strategy provides strong security and compatibility guarantees
by construction, but its natural implementation leads to state explosion in
real-world programs. To address this challenge, Constantine relies on carefully
designed optimizations such as just-in-time loop linearization and aggressive
function cloning for fully context-sensitive points-to analysis, which not only
address state explosion, but also lead to an efficient and compatible solution.
Constantine yields overheads as low as 16% on standard benchmarks and can handle
a fully-fledged component from the production wolfSSL library.