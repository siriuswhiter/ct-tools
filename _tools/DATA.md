---
slug: data
name: DATA
description: "DATA - differential address trace analysis: Finding address-based side-channels in binaries"
year: 2018
target: Binary
technique: Dynamic
guarantees: sound with restrictions
available: true
repo: https://github.com/Fraunhofer-AISEC/DATA
papers:
 - name: "DATA - differential address trace analysis: Finding address-based side-channels in binaries"
   link: https://www.usenix.org/conference/usenixsecurity18/presentation/weiser
 - name: "Big numbers - big troubles: Systematically analyzing nonce leakage in (EC)DSA implementations"
   link: https://www.usenix.org/conference/usenixsecurity20/presentation/weiser
---

![GitHub last commit](https://img.shields.io/github/last-commit/Fraunhofer-AISEC/DATA)![GitHub contributors](https://img.shields.io/github/contributors/Fraunhofer-AISEC/DATA)![GitHub Repo stars](https://img.shields.io/github/stars/Fraunhofer-AISEC/DATA)

## Description

**DATA** (Differential Address Trace Analysis) is a tool quite similar to the **Microwalk** framework in that it is a dynamic tool that records memory-accesses of the target into address traces as it processes random secret inputs. The traces are then aligned and analyzed using generic and specific leakage tests. The tool reports the location of leakage and even offers a graphical user interface for analysis.

## Abstract

Cryptographic implementations are a valuable target for address-based side-channel attacks and should, thus, be protected against them. Countermeasures, however, are often incorrectly deployed or completely omitted in practice. Moreover, existing tools that identify information leaks in programs either suffer from imprecise abstraction or only cover a subset of possible leaks. We systematically address these limitations and propose a new methodology to test software for information leaks.

In this work, we present DATA, a differential address trace analysis framework that detects address-based side-channel leaks in program binaries. This accounts for attacks exploiting caches, DRAM, branch prediction, controlled channels, and likewise. DATA works in three phases. First, the program under test is executed to record several address traces. These traces are analyzed using a novel algorithm that dynamically re-aligns traces to increase detection accuracy. Second, a generic leakage test filters differences caused by statistically independent program behavior, e.g., randomization, and reveals true information leaks. The third phase classifies these leaks according to the information that can be obtained from them. This provides further insight to security analysts about the risk they pose in practice.

We use DATA to analyze OpenSSL and PyCrypto in a fully automated way. Among several expected leaks in symmetric ciphers, DATA also reveals known and previously unknown leaks in asymmetric primitives (RSA, DSA, ECDSA), and DATA identifies erroneous bug fixes of supposedly fixed constant-time vulnerabilities.