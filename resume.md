---
verbosity: brief
---

## Profile

I am a technical writer, editor, content manager and information designer with well developed skills in project management, web development, business analysis, presentation and research. I am fluent in German and held a TS/SCI security clearance.

## Experience

{% assign sorted_positions = (site.resume_positions | sort: 'sorter') | reverse %}
{% for position in sorted_positions %}
  {% if position.display %}
<p>{{position.title | upcase}},{{position.company | upcase}}, {{position.location | upcase}}, {{position.dates | upcase}}</p>
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
### Certification
## Service
## Skills

{% for skillset in site.resume_skills %}
<p>{{skillset.name}}</p>
<p>{{skillset.content | markdownify}}</p>
{% endfor %}
