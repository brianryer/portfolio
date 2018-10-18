---
verbosity: verbose
---

{% include resume_menu.md %}

{% assign sorted_sections = site.resume_sections | sort: 'sorter' %}
{% for section in sorted_sections %}
  {% if section.display %}
<h2>{{ section.name | capitalize }}</h2>
    {% if section.name = 'experience' %}
<p>{{ position.verbose_summary | markdownify }}</p>
    {% elsif section.name = 'skills' %}
      {% assign skills_section = site.resume_skills | sort: 'sorter' %}
        {% for section in skills_section %}
<p><strong>{{ section.name }}</strong>: {{ section.skills }}</p>
        {% endfor %}
    {% else %}
<p>{{ section.content }}</p>
    {% endif %}
  {% endif %}
{% endfor %}
