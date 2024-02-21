---
slug: triggerflow
title: TriggerFlow
description: "Triggerflow: Regression Testing by Advanced Execution Path Inspection"
year: 2018
target: Binary
technique: Dynamic
guarantees: "no"
available: true
repo: https://gitlab.com/nisec/triggerflow
papers:
 - name: "Triggerflow: Regression Testing by Advanced Execution Path Inspection"
   link: https://doi.org/10.1007/978-3-030-22038-9_16
---

## Abstract

Cryptographic libraries often feature multiple implementations of primitives to meet both the security needs of handling private information and the performance requirements of modern services when the handled information is public. OpenSSL, the de-facto standard free and open source cryptographic library, includes mechanisms to differentiate the confidential data and its control flow, including run-time flags, designed for hardening against timing side-channels, but repeatedly accidentally mishandled in the past. To analyze and prevent these accidents, we introduce Triggerflow, a tool for tracking execution paths that, assisted by source annotations, dynamically analyzes the binary through the debugger. We validate this approach with case studies demonstrating how adopting our method in the development pipeline would have promptly detected such accidents. We further show-case the value of the tooling by presenting two novel discoveries facilitated by Triggerflow: one leak and one defect.