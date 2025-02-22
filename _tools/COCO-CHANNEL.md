---
slug: coco-channel
title: COCO-CHANNEL
description: "Symbolic path cost analysis for side-channel detection"
year: 2018
target: Java
technique: Symbolic
guarantees: sound
available: false
papers:
 - name: "Symbolic path cost analysis for side-channel detection"
   link: https://doi.org/10.1145/3213846.3213867
---

## Abstract

Side-channels in software are an increasingly significant threat to the
confidentiality of private user information, and the static detection of such
vulnerabilities is a key challenge in secure software development. In this
paper, we introduce a new technique for scalable detection of side- channels
in software. Given a program and a cost model for a side-channel (such as time
or memory usage), we decompose the control flow graph of the program into nested
branch and loop components, and compositionally assign a symbolic cost
expression to each component. Symbolic cost expressions provide an
over-approximation of all possible observable cost values that components can
generate. Queries to a satisfiability solver on the difference between possible
cost values of a component allow us to detect the presence of imbalanced paths
(with respect to observable cost) through the control flow graph. When combined
with taint analysis that identifies conditional statements that depend on secret
information, our technique answers the following question: Does there exist a
pair of paths in the program's control flow graph, differing only on branch
conditions influenced by the secret, that differ in observable side-channel
value by more than some given threshold? Additional optimization queries allow
us to identify the minimal number of loop iterations necessary for the above to
hold or the maximal cost difference between paths in the graph. We perform
symbolic execution based feasibility analyses to eliminate control flow paths
that are infeasible. We implemented our techniques in a prototype, and we
demonstrate its favourable performance against state-of-the-art tools as well
as its effectiveness and scalability on a set of sizable, realistic Java
server-client and peer-to-peer applications.