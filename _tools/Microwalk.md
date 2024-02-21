---
slug: microwalk
title: Microwalk
description: "Microwalk: A framework for finding side channels in binaries"
year: 2018
target: Binary
technique: Dynamic
guarantees: "sound with restrictions"
available: true
repo: https://github.com/UzL-ITS/Microwalk
papers:
 - name: "Microwalk: A framework for finding side channels in binaries"
   link: https://doi.org/10.1145/3274694.3274741
 - name: "Microwalk-CI: Practical Side-Channel Analysis for JavaScript Applications"
   link: https://doi.org/10.1145/3548606.3560654
---

![GitHub last commit](https://img.shields.io/github/last-commit/UzL-ITS/Microwalk)![GitHub contributors](https://img.shields.io/github/contributors/UzL-ITS/Microwalk)![GitHub Repo stars](https://img.shields.io/github/stars/UzL-ITS/Microwalk)

## Description

The **MicroWalk** framework is a dynamic tool that uses Dynamic Binary Instrumentation (DBI) and Mutual Information Analysis (MIA). As a dynamic tool, it runs the target with random inputs and uses dynamic binary instrumentation to log events such as memory allocations, branches, calls, returns, memory reads/writes as well as stack operations into an execution trace. It then processes these traces by applying the chosen leakage model, i.e., in the branching model, it only keeps the control flow events in the execution traces. After collection of traces, it offers several analysis options, either directly comparing the traces or using mutual information analysis either on the whole trace or a specific offset in the execution traces (a specific instruction).

The tool was further extended in **Microwalk-CI**.

## Abstract (Microwalk)

Microarchitectural side channels expose unprotected software to information leakage attacks where a software adversary is able to track runtime behavior of a benign process and steal secrets such as cryptographic keys. As suggested by incremental software patches for the RSA algorithm against variants of side-channel attacks within different versions of cryptographic libraries, protecting security-critical algorithms against side channels is an intricate task. Software protections avoid leakages by operating in constant time with a uniform resource usage pattern independent of the processed secret. In this respect, automated testing and verification of software binaries for leakage-free behavior is of importance, particularly when the source code is not available. In this work, we propose a novel technique based on Dynamic Binary Instrumentation and Mutual Information Analysis to efficiently locate and quantify memory based and control-flow based microarchitectural leakages. We develop a software framework named MicroWalk for side-channel analysis of binaries which can be extended to support new classes of leakage. For the first time, by utilizing MicroWalk, we perform rigorous leakage analysis of two widely-used closed-source cryptographic libraries: Intel IPP and Microsoft CNG. We analyze 15 different cryptographic implementations consisting of 112 million instructions in about 105 minutes of CPU time. By locating previously unknown leakages in hardened implementations, our results suggest that MicroWalk can efficiently find microarchitectural leakages in software binaries.

## Abstract (Microwalk-CI)

Secret-dependent timing behavior in cryptographic implementations has resulted in exploitable vulnerabilities, undermining their security. Over the years, numerous tools to automatically detect timing leakage or even to prove their absence have been proposed. However, a recent study at IEEE S&P 2022 showed that, while many developers are aware of one or more analysis tools, they have major difficulties integrating these into their workflow, as existing tools are tedious to use and mapping discovered leakages to their originating code segments requires expert knowledge. In addition, existing tools focus on compiled languages like C, or analyze binaries, while the industry and open-source community moved to interpreted languages, most notably JavaScript.

In this work, we introduce Microwalk-CI, a novel side-channel analysis framework for easy integration into a JavaScript development workflow. First, we extend existing dynamic approaches with a new analysis algorithm, that allows efficient localization and quantification of leakages, making it suitable for use in practical development. We then present a technique for generating execution traces from JavaScript applications, which can be further analyzed with our and other algorithms originally designed for binary analysis. Finally, we discuss how Microwalk-CI can be integrated into a continuous integration (CI) pipeline for efficient and ongoing monitoring. We evaluate our analysis framework by conducting a thorough evaluation of several popular JavaScript cryptographic libraries, and uncover a number of critical leakages.