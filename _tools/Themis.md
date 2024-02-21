---
slug: themis
name: Themis
description: "Precise detection of side-channel vulnerabilities using quantitative cartesian hoare logic"
year: 2017
target: Java
technique: Formal
guarantees: "sound"
available: false
papers:
 - name: "Precise detection of side-channel vulnerabilities using quantitative cartesian hoare logic"
   link: https://doi.org/10.1145/3133956.3134058
---

## Abstract

This paper presents Themis, an end-to-end static analysis tool for finding resource-usage side-channel vulnerabilities in Java applications. We introduce the notion of epsilon-bounded non-interference, a variant and relaxation of Goguen and Meseguer's well-known non-interference principle. We then present Quantitative Cartesian Hoare Logic (QCHL), a program logic for verifying epsilon-bounded non-interference. Our tool, Themis, combines automated reasoning in CHL with lightweight static taint analysis to improve scalability. We evaluate Themis on well known Java applications and demonstrate that Themis can find unknown side-channel vulnerabilities in widely-used programs. We also show that Themis can verify the absence of vulnerabilities in repaired versions of vulnerable programs and that Themis compares favorably against Blazer, a state-of-the-art static analysis tool for finding timing side channels in Java applications.