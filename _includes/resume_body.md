{% assign sorted_sections = site.resume_sections | sort: "sorter" %}
{% assign verbosity = include.variable-param %}
{% capture verbosity %}{{include.variable-param}}{% endcapture %}
{% for section in sorted_sections %}
  {% if section.display %}
<h2>{{ section.name | capitalize }}</h2>
<p>{{ section.content | markdownify }}</p>
  {% endif %}
{% endfor %}
