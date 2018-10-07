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
    <p>{% case page.verbosity %}
        {% when 'brief' %}
           {{position.summary_brief | markdownify}}
        {% when 'verbose' %}
           {{position.summary_verbose | markdownify}}
        {% else %}
           {{position.summary_standard | markdownify}}
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
