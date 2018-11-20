{% assign sorted_sections = site.resume_sections | sort: 'sorter' %}
{% for section in sorted_sections | where: section.display %}
<h2>{{ section.name | capitalize }}</h2>
  {% if section.name == 'experience' %}
    {% assign sorted_positions = site.resume_positions | sort: "sorter" | reverse %}
    {% for position in sorted_positions | where: position.display %}
<div class="position-title"><p><span class="position-title">{{ position.title }}</span>, <span class="position-company">{{ position.company }}</span>, <span class="position-location">{{ position.location }}</span>, <span class="position-dates">{{ position.dates }}</span></p></div>
<div class="position-summary">
        {% assign v = page.verbosity %}
        {% case v %}
          {% when 'brief' %}
            {{ position.brief_summary | markdownify }}
          {% when 'verbose' %}
            {{ position.verbose_summary | markdownify }}
          {% else %}
            {{ position.standard_summary | markdownify }}
        {% endcase %}
</div>
    {% endfor %}
  {% elsif section.name == 'skills' %}
    {% assign skillset = site.resume_skills | sort: 'sorter' %}
    {% for skill in skillset | where: skill.display %}
<p><strong>{{ skill.name }}</strong>: {{ skill.skills }}</p>
    {% endfor %}
  {% else %}
<p>{{- section.content -}}</p>
  {% endif %}
{% endfor %}
