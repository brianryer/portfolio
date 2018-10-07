---
verbosity: standard
---
[Brief](resume_brief.md)|[Standard](resume.md)|[Verbose](resume_verbose.md)|

## Profile
{% assign this_section = (site.resume_sections | where: "type", "profile" ) %}
{% for section in this_section %}
<p>{{ section.content }}</p>
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
{% assign section = site.resume_sections | where:'type', 'education' %}
{{ section.content }}

### Certification
{% assign section = site.resume_sections | where:'type', 'certification' %}
{{ section.content }}

## Service
{% assign section = site.resume_sections | where:'type', 'service' %}
{{ section.content }}

## Skills
{% for skillset in site.resume_skills %}
<p>{{skillset.name}}</p>
<p>{{skillset.content | markdownify}}
{% endfor %}

## Online
{% assign section = site.resume_sections | where:'type', 'online' %}
{{ section.content }}
