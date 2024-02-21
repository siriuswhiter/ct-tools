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

## Resources

- <https://neuromancer.sk/article/26>
- <https://crocs.fi.muni.cz/public/papers/usablect_sp22>
