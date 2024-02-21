---
slug: kmo12
name: KMO12
description: "Automatic quantification of cache side-channels"
year: 2012
target: Binary
technique: Formal
guarantees: other
available: false
papers:
 - name: "Automatic quantification of cache side-channels"
   link: https://doi.org/10.1007/978-3-642-31424-7_40
---

## Abstract

The latency gap between caches and main memory has been successfully exploited for recovering sensitive input to programs, such as cryptographic keys from implementation of AES and RSA. So far, there are no practical general-purpose countermeasures against this threat. In this paper we propose a novel method for automatically deriving upper bounds on the amount of information about the input that an adversary can extract from a program by observing the CPU’s cache behavior. At the heart of our approach is a novel technique for efficient counting of concretizations of abstract cache states that enables us to connect state-of-the-art techniques for static cache analysis and quantitative information-flow. We implement our counting procedure on top of the AbsInt TimingExplorer, one of the most advanced engines for static cache analysis. We use our tool to perform a case study where we derive upper bounds on the cache leakage of a 128-bit AES executable on an ARM processor. We also analyze this implementation with a commonly suggested (but until now heuristic) countermeasure applied, obtaining a formal account of the corresponding increase in security.