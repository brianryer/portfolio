---
name: experience
sorter: 20
display: true
---
{% assign sorted_positions = site.resume_positions | sort: "sorter" | reverse %}
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
