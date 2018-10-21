{% assign sorted_sections = site.resume_sections | sort: 'sorter' %}
{% for section in sorted_sections %}
  {% if section.display == 'true' %}
    <h2>{{ section.name | capitalize }}</h2>
    {% if section.name == 'experience' %}
      {% assign sorted_positions = site.resume_positions | sort: "sorter" | reverse %}
      {% for position in sorted_positions %}
        {% if position.display == 'true' %}
          <p><strong>{{ position.title }}</strong>, {{ position.company }}, {{ position.location }}, {{ position.dates }}</p>
          {% assign v = page.verbosity %}
          {% case v %}
            {% when 'brief' %}
              <p>{{ position.brief_summary | markdownify }}</p>
            {% when 'verbose' %}
              <p>{{ position.verbose_summary | markdownify }}</p>
            {% else %}
              <p>{{ position.standard_summary | markdownify }}</p>
          {% endcase %}
        {% endif %}
      {% endfor %}
    {% elsif section.name == 'skills' %}
      {% assign skillset = site.resume_skills | sort: 'sorter' %}
      {% for skill in skillset %}
        {% if skill.display == 'true' %}
          <p><strong>{{ skill.name }}</strong>: {{ skill.skills }}</p>
        {% endif %}
      {% endfor %}
    {% else %}
      <p>{{ section.content }}</p>
  {% endif %}
{% endfor %}
