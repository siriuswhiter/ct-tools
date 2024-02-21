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
| [CT-WASM](#ct-wasm)                     | 2019 | WASM    | Formal      | sound                   |
| [DATA](#data)                           | 2018 | Binary  | Dynamic     | sound with restrictions |
| [dudect](#dudect)                       | 2017 | Binary  | Statistical | no                      |
| [ENCIDER](#encider)                     | 2022 | LLVM    | Symbolic    | sound with restrictions |
| [ENCoVer](#encover)                     | 2012 | Java    | Formal      | sound                   |
| [FaCT](#fact)                           | 2019 | DSL     | Formal      | sound                   |
| [FlowTracker](#flowtracker)             | 2016 | LLVM IR | Formal      | sound                   |
| [haybale-pitchfork](#haybale-pitchfork) | 2019 | LLVM IR | Symbolic    | sound with restrictions |
| [KMO12](#kmo12)                         | 2012 | Binary  | Formal      | other                   |
| [Manifold](#manifold)                   | 2022 | Binary  | Statistical | no                      |
| [MemSan](#memsan)                       | -    | LLVM IR | Dynamic     | sound with restrictions |
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


### CT-WASM

- Introduced in “CT-WASM: type-driven secure cryptography for the web ecosystem” by C. Watt, J. Renner, N. Popescu, S. Cauligi, and D. Stefan; <https://doi.org/10.1145/3290390>
- **Tool available:** <https://github.com/PLSysSec/ct-wasm> ![GitHub last commit](https://img.shields.io/github/last-commit/PLSysSec/ct-wasm)![GitHub contributors](https://img.shields.io/github/contributors/PLSysSec/ct-wasm)![GitHub Repo stars](https://img.shields.io/github/stars/PLSysSec/ct-wasm)

### DATA

- Introduced in “DATA - differential address trace analysis: Finding address-based side-channels in binaries” by S. Weiser, A. Zankl, R. Spreitzer, K. Miller, S. Mangard, and G. Sigl; <https://www.usenix.org/conference/usenixsecurity18/presentation/weiser>
- Used in “Big numbers - big troubles: Systematically analyzing nonce leakage in (EC)DSA implementations” by S. Weiser, D. Schrammel, L. Bodner, and R. Spreitzer; <https://www.usenix.org/conference/usenixsecurity20/presentation/weiser>
- **DATA** (Differential Address Trace Analysis) is a tool quite similar to the **Microwalk** framework in that it is a dynamic tool that records memory-accesses of the target into address traces as it processes random secret inputs. The traces are then aligned and analyzed using generic and specific leakage tests. The tool reports the location of leakage and even offers a graphical user interface for analysis.
- **Tool available:** <https://github.com/Fraunhofer-AISEC/DATA> ![GitHub last commit](https://img.shields.io/github/last-commit/Fraunhofer-AISEC/DATA)![GitHub contributors](https://img.shields.io/github/contributors/Fraunhofer-AISEC/DATA)![GitHub Repo stars](https://img.shields.io/github/stars/Fraunhofer-AISEC/DATA)

### dudect

- Introduced in “Dude, is my code constant time?” by O. Reparaz, J. Balasch, and I. Verbauwhede; <https://doi.org/10.23919/DATE.2017.7927267>
- **dudect** is a dynamic tool that uses leakage assessment techniques from physical (power and EM) side-channel analysis, namely test-vector leakage assessment (TVLA). It first runs the target using two classes of secret input data with varying public input data and measures the duration of execution for each run. It then applies a test to the two distributions of the duration of execution for the two classes (either Welch's t-test for equality of means or Kolmogorov-Smirnov test for equality of distributions), and if the distributions differ, leakage is reported. This is analogous to how leakage assessment is used in power side-channel attacks, in that instead of comparing distributions of power consumption at points during the execution of the target, the runtime distributions are compared.
- **Tool available:** <https://github.com/oreparaz/dudect> ![GitHub last commit](https://img.shields.io/github/last-commit/oreparaz/dudect)![GitHub contributors](https://img.shields.io/github/contributors/oreparaz/dudect)![GitHub Repo stars](https://img.shields.io/github/stars/oreparaz/dudect)

### ENCIDER

- Introduced in “ENCIDER: Detecting Timing and Cache Side Channels in SGX Enclaves and Cryptographic APIs” by Tuba Yavuz, Farhaan Fowze, Grant Hernandez, Ken Yihang Bai, Kevin Butler, and Dave Jing Tian; <https://ieeexplore.ieee.org/abstract/document/9737388>
- **Tool available:** <https://github.com/sysrel/ENCIDER>

### ENCoVer

- Introduced in “ENCoVer: Symbolic exploration for information flow security” by M. Balliu, M. Dam, and G. L. Guernic; <https://doi.org/10.1109/CSF.2012.24>
- **Tool available:**  <https://people.kth.se/~musard/files/encover.html>

### FaCT

- Introduced in “FaCT: a DSL for timing-sensitive computation” by S. Cauligi, G. Soeller, B. Johannesmeyer, F. Brown, R. S. Wahby,
  J. Renner, B. Grégoire, G. Barthe, R. Jhala, and D. Stefan; <https://doi.org/10.1145/3314221.3314605>
- The **FaCT** tool is less of a tool for analysis of implementations for timing leakage and more of a domain-specific language for writing constant-time implementations that automatically removes leakage during compilation. The language is C-like, compiles into LLVM IR, and offers the `secret` keyword, which is used to mark certain variables as secret, which then triggers the compiler to generate constant-time code with regards to their values.
- **Tool available:** <https://github.com/plsyssec/fact> ![GitHub last commit](https://img.shields.io/github/last-commit/plsyssec/fact)![GitHub contributors](https://img.shields.io/github/contributors/plsyssec/fact)![GitHub Repo stars](https://img.shields.io/github/stars/plsyssec/fact)

### FlowTracker

- Introduced in “Sparse representation of implicit flows with applications to side-channel detection” by B. Rodrigues, F. M. Q. Pereira, and D. F. Aranha; <https://doi.org/10.1145/2892208.2892230>
- The **FlowTracker** tool is a static tool that works by analyzing the Program Dependence Graph (PDG) of the target in LLVM IR form.
- **Tool not available:** <http://cuda.dcc.ufmg.br/flowtracker/>

### haybale-pitchfork

- Introduced in <https://github.com/PLSysSec/haybale-pitchfork>
- **Tool available:** <https://github.com/PLSysSec/haybale-pitchfork> ![GitHub last commit](https://img.shields.io/github/last-commit/PLSysSec/haybale-pitchfork)![GitHub contributors](https://img.shields.io/github/contributors/PLSysSec/haybale-pitchfork)![GitHub Repo stars](https://img.shields.io/github/stars/PLSysSec/haybale-pitchfork)

### KMO12

- Introduced in “Automatic quantification of cache side-channels” by B. Köpf, L. Mauborgne, and M. Ochoa; <https://doi.org/10.1007/978-3-642-31424-7_40>
- **Tool not available, superseded by [CacheAudit](#cacheaudit)**

### Manifold

- Introduced in “Automated side channel analysis of media software with manifold learning” by Y. Yuan, Q. Pang, and S. Wang; <https://www.usenix.org/conference/usenixsecurity22/presentation/yuan-yuanyuan>
- **Tool available:** <https://zenodo.org/record/5816702#.YdQMHxNByjA>

### MemSan

- Introduced in <https://clang.llvm.org/docs/MemorySanitizer.html>
- **Tool available:** Use MemorySanitizer.

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
