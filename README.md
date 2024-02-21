## Constant-timeness verification tools

This page lists tools for testing and verification of constant-timeness of programs.
The table is based mostly on the work in [*“They’re not that hard to mitigate”: What Cryptographic Library Developers Think About Timing Attacks*](https://crocs.fi.muni.cz/public/papers/usablect_sp22) with addition of more tools. 


![Oprah giving everyone a tool](/assets/img/oprah.jpg)

## Tools

<table>
<thead>
	<th>Name</th>
	<th>Year</th>
	<th>Target</th>
	<th>Technique</th>
	<th>Guarantees</th>
</thead>
{% for tool in site.tools %}
	<tr>
		<td><a href="{{ tool.url | relative_url }}">{{ tool.name }}</a></td>
		<td>{{ tool.year }}</td>
		<td>{{ tool.target }}</td>
		<td>{{ tool.technique }}</td>
		<td>{{ tool.guarantees }}</td>
	</tr>
{% endfor %}
</table>

| Name                                    | Year | Target  | Technique   | Guarantees              |
| --------------------------------------- | ---- | ------- | ----------- | ----------------------- |
| [MicroWalk](#microwalk)                 | 2018 | Binary  | Dynamic     | sound with restrictions |
| [pitchfork-angr](#pitchfork-angr)       | 2019 | Binary  | Symbolic    | no                      |
| [pin_based_cec](#pin-based-cec)         | 2019 | Binary  | Dynamic     | sound with restrictions |
| [SC-Eliminator](#sc-eliminator)         | 2018 | LLVM IR | Formal      | sound                   |
| [SideTrail](#sidetrail)                 | 2018 | LLVM IR | Formal      | other                   |
| [Themis](#themis)                       | 2017 | Java    | Formal      | sound                   |
| [timecop](#timecop)                     | -    | Binary  | Dynamic     | sound with restrictions |
| [tis-ct](#tis-ct)                       | -    | C       | Symbolic    | sound with restrictions |
| [tlsfuzzer](#tlsfuzzer)                 | 2023 | Network | Statistical | other                   |
| [TriggerFlow](#triggerflow)             | 2018 | Binary  | Dynamic     | no                      |
| [VirtualCert](#virtualcert)             | 2014 | x86     | Formal      | sound                   |


### MicroWalk

- Introduced in “Microwalk: A framework for finding side channels in binaries” by J. Wichelmann, A. Moghimi, T. Eisenbarth, and B. Sunar; <https://doi.org/10.1145/3274694.3274741>,
- Extended in “Microwalk-CI: Practical Side-Channel Analysis for JavaScript Applications” by J. Wichelmann, F. Sieck, A. Pätschke and T. Eisenbarth; <https://doi.org/10.1145/3548606.3560654>
- The **MicroWalk** framework is a dynamic tool that uses Dynamic Binary Instrumentation (DBI) and Mutual Information Analysis (MIA). As a dynamic tool, it runs the target with random inputs and uses dynamic binary instrumentation to log events such as memory allocations, branches, calls, returns, memory reads/writes as well as stack operations into an execution trace. It then processes these traces by applying the chosen leakage model, i.e., in the branching model, it only keeps the control flow events in the execution traces. After collection of traces, it offers several analysis options, either directly comparing the traces or using mutual information analysis either on the whole trace or a specific offset in the execution traces (a specific instruction).
- **Tool available:** <https://github.com/UzL-ITS/Microwalk> ![GitHub last commit](https://img.shields.io/github/last-commit/UzL-ITS/Microwalk)![GitHub contributors](https://img.shields.io/github/contributors/UzL-ITS/Microwalk)![GitHub Repo stars](https://img.shields.io/github/stars/UzL-ITS/Microwalk)

### pitchfork-angr

- Introduced in <https://github.com/PLSysSec/pitchfork-angr>
- **Tool available:** <https://github.com/PLSysSec/pitchfork-angr> ![GitHub last commit](https://img.shields.io/github/last-commit/PLSysSec/pitchfork-angr)![GitHub contributors](https://img.shields.io/github/contributors/PLSysSec/pitchfork-angr)![GitHub Repo stars](https://img.shields.io/github/stars/PLSysSec/pitchfork-angr)

### Pin-based-CEC

- Introduced in <https://github.com/intel/pin-based-cec>
- **Tool available:** <https://github.com/intel/pin-based-cec> ![GitHub last commit](https://img.shields.io/github/last-commit/intel/pin-based-cec)![GitHub contributors](https://img.shields.io/github/contributors/intel/pin-based-cec)![GitHub Repo stars](https://img.shields.io/github/stars/intel/pin-based-cec)

### SC-Eliminator

- Introduced in “Eliminating timing side-channel leaks using program repair” by M. Wu, S. Guo, P. Schaumont, and C. Wang; <https://doi.org/10.1145/3213846.3213851>
- **Tool available:** <https://zenodo.org/record/1299357>

### SideTrail

- Introduced in “Sidetrail: Verifying time-balancing of cryptosystems” by K. Athanasiou, B. Cook, M. Emmi, C. MacCárthaigh, D. Schwartz-Narbonne, and S. Tasiran; <https://doi.org/10.1007/978-3-030-03592-1_12>
- **SideTrail** (at one point called SideWinder) is a tool for verifying time-balanced implementations. The notion of time-balance is a weakening of the constant-time notion that allows for the presence of leakage that is provably under some bound $\delta$ (execution time is negligibly influenced by secrets). For $\delta = 0$ this notion fits well with the notion of constant-time. The tool uses a cross-product technique similar to that of **ct-verif**. However, instead of asserting the equality of memory accesses and program counter, it asserts the equality of an instruction counter. Its leakage model and technique are well suited against remote (non-cache) attackers.
- The tool is deployed in the CI of Amazon's **s2n** library at [link](https://github.com/awslabs/s2n/tree/main/tests/sidetrail), where it is used to verify the time-balancedness of several parts of the codebase, handling the CBC decryption, HMAC padding, and AEAD decryption.
- **Tool available:** <https://github.com/aws/s2n-tls/tree/main/tests/sidetrail>

### Themis

- Introduced in “Precise detection of side-channel vulnerabilities using quantitative cartesian hoare logic” by J. Chen, Y. Feng, and I. Dillig; <https://doi.org/10.1145/3133956.3134058>
- **Tool not available**

### timecop

- Introduced in <https://www.post-apocalyptic-crypto.org/timecop/>
- The **TIMECOP** tool is a tool that uses Valgrind's memcheck client requests `VALGRIND_MAKE_MEM_{UN}DEFINED`  to essentially implement a method like **ctgrind**. It is a part of the [SUPERCOP](https://bench.cr.yp.to/supercop.html) toolkit (**S**ystem for **U**nified **P**erformance **E**valuation **R**elated to **C**ryptographic **O**perations and **P**rimitives) and is used to evaluate the constant-time properties of implementations in SUPERCOP.
- **Tool available:** <https://www.post-apocalyptic-crypto.org/timecop/>

### tis-ct

- <http://web.archive.org/web/20200810074547/http://trust-in-soft.com/tis-ct/>
- **Tool not available**

### tlsfuzzer

- Introduced in “Everlasting ROBOT: The Marvin Attack” by H. Kario; <https://eprint.iacr.org/2023/1442>; and in “Out of the Box Testing” by H. Kario; <https://eprint.iacr.org/2023/1441>
- The tool is a generic TLS test suite with the timing verification as one of the features.
- The tool is unique in that it allows measuring even very small differences (in the sub nanosecond range) over the network, allowing complete black-box testing of implementations. While it does use statistical tests for determining if the side channel is present (sign test, Wilcoxon signed-rank test, and Friedman test), it does combine them with the bootstrapping of the confidence intervals of pairwise differences: providing easy to understand upper bounds of the possible side-channel leakage.
- **Tool available:** <https://github.com/tlsfuzzer/tlsfuzzer> ![GitHub last commit](https://img.shields.io/github/last-commit/tlsfuzzer/tlsfuzzer)![GitHub contributors](https://img.shields.io/github/contributors/tlsfuzzer/tlsfuzzer)![GitHub Repo stars](https://img.shields.io/github/stars/tlsfuzzer/tlsfuzzer)

### TriggerFlow

- Introduced in “Triggerflow: Regression Testing by Advanced Execution Path Inspection” by I. Gridin, C. P. García, N. Tuveri and B. B. Brumley; <https://doi.org/10.1007/978-3-030-22038-9_16>
- **Tool available:** <https://gitlab.com/nisec/triggerflow>

### VirtualCert

- Introduced in “System-level non-interference for constant-time cryptography” by G. Barthe, G. Betarte, J. D. Campo, C. D. Luna, and D. Pichardie; <https://doi.org/10.1145/2660267.2660283>
- **Tool available:** <https://www.fing.edu.uy/inco/grupos/gsi/project/virtualcert/>

## Resources

- <https://neuromancer.sk/article/26>
- <https://crocs.fi.muni.cz/public/papers/usablect_sp22>
