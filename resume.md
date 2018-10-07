---
verbosity: standard
---
[Brief](resume_brief.md)|[Standard](resume.md)|[Verbose](resume_verbose.md)|

## Profile
{% assign this_section = (site.resume_sections | where: "type", "profile" ) %}
{% for section in this_section %}
<p>{{ this_section.content }}</p>
{% endfor %}

## Experience
{% assign sorted_positions = (site.resume_positions | sort: "sorter") | reverse %}
{% for position in sorted_positions %}
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
{% assign this_section = (site.resume_sections | where: "type", "education" ) %}
{% for section in this_section %}
<p>{{ this_section.content }}</p>
{% endfor %}

### Certification
{% assign this_section = (site.resume_sections | where: "type", "certififation" ) %}
{% for section in this_section %}
<p>{{ this_section.content }}</p>
{% endfor %}

## Service
{% assign this_section = (site.resume_sections | where: "type", "service" ) %}
{% for section in this_section %}
<p>{{ this_section.content }}</p>
{% endfor %}

## Skills
{% for skillset in site.resume_skills %}
<p>{{skillset.name}}</p>
<p>{{skillset.content | markdownify}}
{% endfor %}

## Online
{% assign this_section = (site.resume_sections | where: "type", "online" ) %}
{% for section in this_section %}
<p>{{ this_section.content }}</p>
{% endfor %}
