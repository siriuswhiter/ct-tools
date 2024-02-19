---
slug: cacheaudit
name: CacheAudit
description: "CacheAudit: A tool for the static analysis of cache side channels"
year: 2013
target: Binary
technique: Formal
guarantees: other
available: true
repo: https://github.com/cacheaudit/cacheaudit
site: https://software.imdea.org/projects/cacheaudit/
papers:
 - name: "CacheAudit: A tool for the static analysis of cache side channels"
   link: https://www.usenix.org/conference/usenixsecurity13/technical-sessions/paper/doychev
---

![GitHub last commit](https://img.shields.io/github/last-commit/cacheaudit/cacheaudit)![GitHub contributors](https://img.shields.io/github/contributors/cacheaudit/cacheaudit)![GitHub Repo stars](https://img.shields.io/github/stars/cacheaudit/cacheaudit)

## Abstract

We present CacheAudit, a versatile framework for the automatic, static analysis
of cache side channels. CacheAudit takes as input a program binary and a cache
configuration, and it derives formal, quantitative security guarantees for a
comprehensive set of side-channel adversaries, namely those based on observing
cache states, traces of hits and misses, and execution times.

Our technical contributions include novel abstractions to efficiently compute
precise overapproximations of the possible side-channel observations for each
of these adversaries. These approximations then yield upper bounds on the
information that is revealed. In case studies we apply CacheAudit to binary
executables of algorithms for symmetric encryption and sorting, obtaining the
first formal proofs of security for implementations with countermeasures such
as preloading and data-independent memory access patterns.
