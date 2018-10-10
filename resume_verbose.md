---
verbosity: verbose
---

{% assign sorted_sections = (site.resume_sections | sort: "sorter") %}
{% for section in sorted_sections %}
<h2>{{ section.type | capitalize }}</h2>
{% assign this_section = section.type %}
  {% case this_section %}
    {% when 'experience' %}
      {% assign sorted_positions = (site.resume_positions | sort: "sorter" | reverse %}
      {% for position in sorted_positions %}
        <p><strong>{{position.title}}</strong>, {{position.company}}, {{position.location}}, {{position.dates}}</p>
        {% if page.verbosity == "brief" %}
          <p>{{position.brief_summary}}</p>
        {% elsif page.verbosity == "verbose" %}
          <p>{{position.verbose_summary | markdownify }}</p>
        {% else %}
          <p>{{position.standard_summary}}</p>
        {% endif %}
      {% endfor %}
    {% when 'skills' %}
      {% assign skills_section = (site.resume_skills) %}
      {% for section in skills_section %}
        <p><strong>{{- section.name -}}</strong>:&nbsp;{{- section.skills -}}</p>
      {% endfor %}
    {% else %}
    <p>{{ section.content }}<p>
  {% endcase %}
{% endfor %}
