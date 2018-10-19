{% assign sorted_sections = site.resume_sections | sort: 'sorter' %}
{% for section in sorted_sections %}
  {% if section.display %}
<h2>{{ section.name | capitalize }}</h2>
  {% endif %}
  {% if section.name == 'experience' %}
    {% assign sorted_positions = site.resume_positions | sort: "sorter" | reverse %}
      {% for position in sorted_positions %}
        {% if position.display %}
<p><strong>{{ position.title }}</strong>, {{ position.company }}, {{ position.location }}, {{ position.dates }}</p>
        {% endif %}
        
{{ include.theverbosity | inspect }}
{{ page.verbosity | inspect }}

<p>{{ position.verbose_summary | markdownify }}</p>

      {% endfor %}
  {% elsif section.name == 'skills' %}
    {% assign skills_section = site.resume_skills | sort: 'sorter' %}
      {% for section in skills_section %}
<p><strong>{{ section.name }}</strong>: {{ section.skills }}</p>
      {% endfor %}
  {% else %}
<p>{{ section.content }}</p>
  {% endif %}
{% endfor %}
