---
slug: catype
name: CaType
description: "Cache Refinement Type for Side-Channel Detection of Cryptographic Software"
year: 2022
target: Binary
technique: Formal
guarantees: sound
available: false
papers:
 - name: "Cache Refinement Type for Side-Channel Detection of Cryptographic Software"
   link: https://dl.acm.org/doi/abs/10.1145/3548606.3560672
---

## Abstract

Cache side-channel attacks exhibit severe threats to software security and
privacy, especially for cryptosystems. In this paper, we propose CaType, a novel
refinement type-based tool for detecting cache side channels in crypto software.
Compared to previous works, CaType provides the following advantages: (1) For
the first time CaType analyzes cache side channels using refinement type over
x86 assembly code. It reveals several significant and effective enhancements
with refined types, including bit-level granularity tracking, distinguishing
different effects of variables, precise type inferences, and high scalability.
(2) CaType is the first static analyzer for crypto libraries in consideration
of blinding-based defenses. (3) From the perspective of implementation, CaType
uses cache layouts of potential vulnerable control-flow branches rather than
cache states to suppress false positives. We evaluate CaType in identifying side
channel vulnerabilities in real-world crypto software, including RSA, ElGamal,
and (EC)DSA from OpenSSL and Libgcrypt. CaType captures all known defects,
detects previously-unknown vulnerabilities, and reveals several false positives
of previous tools. In terms of performance, CaType is 16X faster than CacheD and
131X faster than CacheS when analyzing the same libraries. These evaluation
results confirm the capability of CaType in identifying side channel defects
with great precision, efficiency, and scalability.