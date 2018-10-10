---
verbosity: verbose
---

{% assign sorted_sections = (site.resume_sections | sort: "sorter") %} {% for section in sorted_sections %}

{{ section.type | capitalize }}

{% assign this_section = section.type %} {% case this_section %} {% when 'experience' %} {% assign sorted_positions = (site.resume_positions | sort: "sorter") | reverse %} {% for position in sorted_positions %} {% if position.display %}
{{position.title}}, {{position.company}}, {{position.location}}, {{position.dates}}

{% endif %} {% if page.verbosity == "brief" %}
{{position.brief_summary}}

{% elsif page.verbosity == "verbose" %}
{{position.{{page.verbosity}}_summary | markdownify }}

{% else %}
{{position.standard_summary}}

{% endif %} {% endfor %} {% when 'skills' %} {% assign skills_section = (site.resume_skills) %} {% for section in skills_section %}
{{- section.name -}}: {{- section.skills -}}

{% endfor %} {% else %}
{{ section.content }}

{% endcase %}

{% endfor %}
