---
verbosity: brief
---
# Brian Ryer

(503) 272-1842      brian.ryer@me.com       5812 SE Center Street, Portland, OR 97206 {: .resume-contact-info}

## Profile

I am a technical writer, editor, content manager and information designer with well developed skills in project management, web development, business analysis, presentation and research. I am fluent in German and held a TS/SCI security clearance.

## Experience

{% for position in site.resume_positions %}
<p>{{position.title}}
   {{position.company}}
   {{position.location}}
   {{position.dates}}
</p>
<p>{{position.content | markdownify}}</p>
{% endfor %}

## Education
### Certification
## Service
## Skills

{% for skillset in site.resume_skills %}
<p>{{skillset.name}}</p>
<p>{{skillset.content | markdownify}}</p>
{% endfor %}
