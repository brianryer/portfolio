---
verbosity: brief
---
# Brian Ryer

+1 (503) 272-1842 | brian.ryer@me.com | 5812 SE Center Street, Portland, OR 97206 {: .resume-contact-info}

## Profile

I am a technical writer, editor, content manager and information designer with well developed skills in project management, web development, business analysis, presentation and research. I am fluent in German and held a TS/SCI security clearance.

## Experience

{% for position in site.resume_positions %}
  {% if position.display = yes %}
    <p>{{position.title | upcase}},{{position.company | upcase}},{{position.location | upcase}},{{position.dates | upcase}}</p>
    <p>{% assign handle = page.verbosity %}
      {% case handle %}
        {% when 'brief' %}
           {{position.brief_summary | markdownify}}
        {% when 'verbose' %}
           {{position.verbose_summary | markdownify}}
        {% else %}
           {{position.standard_standard | markdownify}}
      {% endcase %}
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
