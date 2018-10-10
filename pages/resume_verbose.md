---
verbosity: verbose
---

{% assign sorted_sections = ( site.resume_sections | sort: "sorter" ) %}
{% for section in sorted_sections %}
<h2>{{ section.type | capitalize }}</h2>
{% assign this_section = section.type %}
{% case this_section %}
{% when 'experience' %}
{% assign sorted_positions = ( site.resume_positions | sort: "sorter" | reverse ) %}
{% for position in sorted_positions %}
{% if position.display %}
<p><strong>{{ position.title }}</strong>, {{ position.company }}, {{ position.location }}, {{ position.dates }}<p>
{% endif %}
{% if page.verbosity == "brief" %}
<p>{{ position.brief_summary | markdownify }}</p>
{% elsif page.verbosity == "verbose" %}
<p>{{ position.verbose_summary | markdownify }}
{% else %}
<p>{{ position.standard_summary | markdownify }}</p>
{% endif %}
{% endfor %}
{% when 'skills' %}
{% assign skills_section = site.resume_skills %}
{% for section in skills_section %}
<p><strong>{{- section.name -}}</strong>: {{- section.skills -}}</p>
{% endfor %}
{% else %}
<p>{{ section.content | markdownify }}</p>
{% endcase %}
{% endfor %}
