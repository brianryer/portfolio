{% assign sorted_sections = site.resume_sections | sort: "sorter" %}
{% for section in sorted_sections %}
{{ include.verbosity | inspect }}
  {% if section.display %}
<h2>{{ section.name | capitalize }}</h2>
<p>{{ section.content | markdownify }}</p>
  {% endif %}
{% endfor %}
