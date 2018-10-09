---
verbosity: brief
---

[Brief](resume_brief.md)|[Standard](resume.md)|[Verbose](resume_verbose.md)|

## Profile
{% assign profile\_section = (site.resume\_sections | where: "type", "profile" ) %}
{% for section in profile\_section %}
{{ section.content }}
{% endfor %}

## Experience
{% assign sorted\_positions = (site.resume\_positions | sort: "sorter") | reverse %}
{% for position in sorted\_positions %}
  {% if position.display %}
<p>{{position.title}}, {{position.company}}, {{position.location}}, {{position.dates}}</p>
  {% endif %}
  {% if page.verbosity == "brief" %}
<p>{{position.brief_summary}}</p>
  {% elsif page.verbosity == "verbose" %}
<p>{{position.verbose_summary}}</p>
  {% else %}
<p>{{position.standard_summary}}</p>
  {% endif %}
{% endfor %}

## Education
{% assign education\_section = (site.resume\_sections | where: "type", "education" ) %}
{% for section in education\_section %}
<p>{{ section.content }}</p>
{% endfor %}

### Certification
{% assign certification\_section = (site.resume\_sections | where: "type", "certification" ) %}
{% for section in certification\_section %}
<p>{{ section.content }}</p>
{% endfor %}

## Service
{% assign service\_section = (site.resume\_sections | where: "type", "service" ) %}
{% for section in service\_section %}
<p>{{ section.content }}</p>
{% endfor %}

## Skills
{% assign skills\_section = (site.resume\_skills) %}
{% for section in skills\_section %}
<p><strong>{{- section.name -}}</strong>:&nbsp;{{- section.skills -}}</p>
{% endfor %}

## Online
{% assign online\_section = (site.resume\_sections | where: "type", "online" ) %}
{% for section in online\_section %}
<p>{{- section.content -}}</p>
{% endfor %}
