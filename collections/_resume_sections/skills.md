---
type: skills
sorter: 60
display: true
---
{% assign skills_section = site.resume_skills %}
{% for section in skills_section %}
<p><strong>{{- section.name -}}</strong>: {{- section.skills -}}</p>
{% endfor %}
