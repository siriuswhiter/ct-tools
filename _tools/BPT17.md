---
slug: bpt17
title: BPT17
description: "Verifying constant-time implementations by abstract interpretation"
year: 2017
target: C
technique: Symbolic
guarantees: "sound with restrictions"
available: true
site: http://irisa.fr/celtique/ext/esorics17/
papers:
 - name: "Verifying constant-time implementations by abstract interpretation"
   link: https://doi.org/10.1007/978-3-319-66402-6_16
---

## Abstract

Constant-time programming is an established discipline to secure programs against
timing attacks. Several real-world secure C libraries such as NaCl, mbedTLS, or
Open Quantum Safe, follow this discipline. We propose an advanced static analysis,
based on state-of-the-art techniques from abstract interpretation, to report time
leakage during programming. To that purpose, we analyze source C programs and use
full context-sensitive and arithmetic-aware alias analyses to track the tainted flows.

We give semantic evidences of the correctness of our approach on a core language.
We also present a prototype implementation for C programs that is based on the
CompCert compiler toolchain and its companion Verasco static analyzer. We present
verification results on various real-world constant-time programs and report on a
successful verification of a challenging SHA-256 implementation that was out of
scope of previous tool-assisted approaches.
