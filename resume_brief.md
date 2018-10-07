---
verbosity: brief
my_profile: my_profile.md
my_education: my_education.md
my_certification: my_certification.md
my_service: my_service.md
my_online: my_online.md
---

[Brief](resume_brief.md)|[Standard](resume.md)|[Verbose](resume_verbose.md)|

## Profile
{% include {{my_profile}} %}

## Experience
{% assign sorted_positions = (site.resume_positions | sort: 'sorter') | reverse %}
{% for position in sorted_positions %}
  {% if position.display %}
<p>{{position.title}}, {{position.company}}, {{position.location}}, {{position.dates}}</p>
  {% endif %}
  {% if page.verbosity == 'brief' %}
<p>{{position.brief_summary}}</p>
  {% elsif page.verbosity == 'verbose' %}
<p>{{position.verbose_summary}}</p>
  {% else %}
<p>{{position.standard_summary}}</p>
  {% endif %}
{% endfor %}

## Education
{% include {{my_education}} %}

### Certification
{% include {{my_certification}} %}

## Service
{% include {{my_service}} %}

## Skills
{% for skillset in site.resume_skills %}
<p>{{skillset.name}}</p>
<p>{{skillset.content | markdownify}}</p>
{% endfor %}

## Online
{% include {{my_online}} %}
