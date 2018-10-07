---
verbosity: standard
---
[Brief](resume_brief.md)|[Standard](resume.md)|[Verbose](resume_verbose.md)|

## Profile
{% for section in resume_sections %}
  {{ section.content | where: "type", "profile" }}
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
{% for section in resume_sections %}
  {{ section.content | where: "type" , "education" }}
{% endfor %}

### Certification
{% for section in resume_sections %}
  {{ section.content | where: "type", "certification" }}
{% endfor %}

## Service
{% for section in resume_sections %}
  {{ section.content | where: "type", "service" }}
{% endfor %}

## Skills
{% for skillset in site.resume_skills %}
<p>{{skillset.name}}</p>
<p>{{skillset.content | markdownify}}
{% endfor %}

## Online
{% for section in resume_sections %}
  {{ section.content | where: "type", "online" }}
{% endfor %}
