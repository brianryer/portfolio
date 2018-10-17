{% assign sorted_sections = site.resume_sections | sort: "sorter" %}
{% capture verbosity %}{{include.variable-param}}{% endcapture %}
{{include.variable-param | inspect }}
{% for section in sorted_sections %}
  {% if section.display %}
<h2>{{ section.name | capitalize }}</h2>
<p>{{ section.content | markdownify }}</p>
  {% endif %}
{% endfor %}
