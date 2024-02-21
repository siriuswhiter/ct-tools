---
slug: ct-verif
name: ct-verif
description: "Verifying Constant-Time Implementations"
year: 2016
target: LLVM IR
technique: Formal
guarantees: sound
available: true
repo: https://github.com/imdea-software/verifying-constant-time
papers:
 - name: "Verifying Constant-Time Implementations"
   link: https://www.usenix.org/system/files/conference/usenixsecurity16/sec16_paper_almeida.pdf
---

![GitHub last commit](https://img.shields.io/github/last-commit/imdea-software/verifying-constant-time)![GitHub contributors](https://img.shields.io/github/contributors/imdea-software/verifying-constant-time)![GitHub Repo stars](https://img.shields.io/github/stars/imdea-software/verifying-constant-time)

## Description

The **ct-verif** tool is a static analysis tool verifying constant-time
properties of code, working on the level of LLVM IR, with source code
annotations. It uses the [SMACK](http://smackers.github.io/) modular software
verification toolchain, [Bam-Bam-Boogieman](https://github.com/michael-emmi/bam-bam-boogieman)
for Boogie source transformation, [Boogie](https://github.com/boogie-org/boogie)
intermediate verification language as well as the
[Corral](https://github.com/boogie-org/corral) and [Z3](https://github.com/Z3Prover/z3) solvers.

The tool is actively deployed in the CI of Amazon's **s2n** library at
[link](https://github.com/awslabs/s2n/tree/main/tests/ctverif). However,
even there, it is only used to verify two functions that together have less
than 100 lines of code.

## Abstract

The constant-time programming discipline is an effective
countermeasure against timing attacks, which can lead to
complete breaks of otherwise secure systems. However,
adhering to constant-time programming is hard on its
own, and extremely hard under additional efficiency and
legacy constraints. This makes automated verification of
constant-time code an essential component for building
secure software.

We propose a novel approach for verifying constanttime security of real-world code. Our approach is able
to validate implementations that locally and intentionally
violate the constant-time policy, when such violations
are benign and leak no more information than the public outputs of the computation. Such implementations,
which are used in cryptographic libraries to obtain important speedups or to comply with legacy APIs, would be
declared insecure by all prior solutions.

We implement our approach in a publicly available,
cross-platform, and fully automated prototype, ct-verif,
that leverages the SMACK and Boogie tools and verifies
optimized LLVM implementations. We present verification results obtained over a wide range of constant-time
components from the NaCl, OpenSSL, FourQ and other
off-the-shelf libraries. The diversity and scale of our examples, as well as the fact that we deal with top-level
APIs rather than being limited to low-level leaf functions,
distinguishes ct-verif from prior tools.

Our approach is based on a simple reduction of
constant-time security of a program P to safety of a product program Q that simulates two executions of P. We
formalize and verify the reduction for a core high-level
language using the Coq proof assistant.