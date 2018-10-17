{% assign sorted_sections = site.resume_sections | sort: "sorter" %}
{{ include.variable-param }}
{{ include.variable-param | inspect }}
{% for section in sorted_sections %}
  {% if section.display %}
<h2>{{ section.name | capitalize }}</h2>
<p>{{ section.content | markdownify }}</p>
  {% endif %}
{% endfor %}
