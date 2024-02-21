---
slug: casym
name: CaSym
description: "CaSym: Cache Aware Symbolic Execution for Side Channel Detection and Mitigation"
year: 2019
target: LLVM IR
technique: Symbolic
guarantees: sound
available: false
papers:
 - name: "CaSym: Cache Aware Symbolic Execution for Side Channel Detection and Mitigation"
   link: https://doi.org/10.1109/SP.2019.00022
---

## Abstract

Cache-based side channels are becoming an important attack vector through which
secret information can be leaked to malicious parties. implementations and
Previous work on cache-based side channel detection, however, suffers from the
code coverage problem or does not provide diagnostic information that is crucial
for applying mitigation techniques to vulnerable software. We propose CaSym, a
cache-aware symbolic execution to identify and report precise information about
where side channels occur in an input program. Compared with existing work,
CaSym provides several unique features: (1) CaSym enables verification against
various attack models and cache models, (2) unlike many symbolic-execution
systems for bug finding, CaSym verifies all program execution paths in a sound
way, (3) CaSym uses two novel abstract cache models that provide good balance
between analysis scalability and precision, and (4) CaSym provides sufficient
information on where and how to mitigate the identified side channels through
techniques including preloading and pinning. Evaluation on a set of crypto and
database benchmarks shows that CaSym is effective at identifying and mitigating
side channels, with reasonable efficiency.