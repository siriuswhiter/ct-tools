---
slug: tlsfuzzer
name: tlsfuzzer
description: "-"
year: 2023
target: Network
technique: Statistical
guarantees: other
available: true
repo: https://github.com/tlsfuzzer/tlsfuzzer
papers:
 - name: "Everlasting ROBOT: The Marvin Attack"
   link: https://doi.org/10.1007/978-3-031-51479-1_13
 - name: "Out of the Box Testing"
   link: https://eprint.iacr.org/2023/1441
---

![GitHub last commit](https://img.shields.io/github/last-commit/tlsfuzzer/tlsfuzzer)![GitHub contributors](https://img.shields.io/github/contributors/tlsfuzzer/tlsfuzzer)![GitHub Repo stars](https://img.shields.io/github/stars/tlsfuzzer/tlsfuzzer)

## Description

The **tlsfuzzer** tool is a generic TLS test suite with the timing verification as one of the features.
The tool is unique in that it allows measuring even very small differences (in the sub nanosecond range) over the network, allowing complete black-box testing of implementations. While it does use statistical tests for determining if the side channel is present (sign test, Wilcoxon signed-rank test, and Friedman test), it does combine them with the bootstrapping of the confidence intervals of pairwise differences: providing easy to understand upper bounds of the possible side-channel leakage.

## Abstract

In this paper we show that Bleichenbacher-style attacks on RSA decryption are not only still possible, but also that vulnerable implementations are common. We have successfully attacked multiple implementations using only timing of decryption operation and shown that many others are vulnerable. To perform the attack we used more statistically rigorous techniques like the sign test, Wilcoxon signed-rank test, and bootstrapping of median of pairwise differences. We publish a set of tools for testing libraries that perform RSA decryption against timing side-channel attacks, including one that can test arbitrary TLS servers with no need to write a test harnesses. Finally, we propose a set of workarounds that implementations can employ if they can’t avoid the use of RSA.