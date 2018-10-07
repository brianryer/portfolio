---
verbosity: brief
---

## Profile

I am a technical writer, editor, content manager and information designer with well developed skills in project management, web development, business analysis, presentation and research. I am fluent in German and held a TS/SCI security clearance.

## Experience

{{ page.verbosity}}

{% for position in site.resume_positions %}
  {% if position.display %}
    <p>{{position.title | upcase}},{{position.company | upcase}}, {{position.location | upcase}}, {{position.dates | upcase}}</p>
    </p>
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
