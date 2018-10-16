
{{ page.verbosity | inspect }}

{% assign sorted_sections = site.resume_sections | sort: "sorter" %}
{% for section in sorted_sections %}
  {% if section.display %}
<h2>{{ section.type | capitalize }}</h2>
<p>{{ section.content | markdownify }}</p>
  {% endif %}
{% endfor %}
