---
slug: cacheql
title: CacheQL
description: "CacheQL: Quantifying and Localizing Cache Side-Channel Vulnerabilities in Production Software"
year: 2022
target: Binary
technique: Dynamic
guarantees: "sound with restrictions"
available: true
repo: https://github.com/Yuanyuan-Yuan/CacheQL
papers:
 - name: "CacheQL: Quantifying and Localizing Cache Side-Channel Vulnerabilities in Production Software"
   link: https://www.usenix.org/conference/usenixsecurity23/presentation/yuan-yuanyuan-cacheql
---

![GitHub last commit](https://img.shields.io/github/last-commit/Yuanyuan-Yuan/CacheQL)![GitHub contributors](https://img.shields.io/github/contributors/Yuanyuan-Yuan/CacheQL)![GitHub Repo stars](https://img.shields.io/github/stars/Yuanyuan-Yuan/CacheQL)

## Abstract

Cache side-channel attacks extract secrets by examining how victim software
accesses cache. To date, practical attacks on crypto systems and media libraries
are demonstrated under different scenarios, inferring secret keys from crypto
algorithms and reconstructing private media data such as images.

This work first presents eight criteria for designing a fullfledged detector
for cache side-channel vulnerabilities. Then, we propose CacheQL, a novel
detector that meets all of these criteria. CacheQL precisely quantifies
information leaks of binary code, by characterizing the distinguishability of
logged side channel traces. Moreover, CacheQL models leakage as a cooperative
game, allowing information leakage to be precisely distributed to program points
vulnerable to cache side channels. CacheQL is meticulously optimized to analyze
whole side channel traces logged from production software (where each trace can
have millions of records), and it alleviates randomness introduced by crypto
blinding, ORAM, or real-world noises.

Our evaluation quantifies side-channel leaks of production crypto and media
software. We further localize vulnerabilities reported by previous detectors
and also identify a few hundred new vulnerable program points in recent OpenSSL
(ver. 3.0.0), MbedTLS (ver. 3.0.0), Libgcrypt (ver. 1.9.4). Many of our
localized program points are within the pre-processing modules of crypto
libraries, which are not analyzed by existing works due to scalability. We also
localize vulnerabilities in Libjpeg (ver. 2.1.2) that leak privacy about input
images.