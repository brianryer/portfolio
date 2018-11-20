<div class="{{ include.theverbosity }}">
  {% assign sorted_sections = site.resume_sections | sort: 'sorter' %}
  {% for section in sorted_sections | where: section.display %}
    <div class="{{ section.name }}">
      <h2>{{ section.name | capitalize }}</h2>
      {% if section.name == 'experience' %}
        {% assign sorted_positions = site.resume_positions | sort: "sorter" | reverse %}
        {% for position in sorted_positions | where: position.display %}
          <div class="position">
            <div class="position-title">
              <p><span class="position-title">{{ position.title }}</span>, <span class="position-company">{{ position.company }}</span>, <span class="position-location">{{ position.location }}</span>, <span class="position-dates">{{ position.dates }}</span></p>
            </div>
            <div class="position-summary">
                  {% assign v = page.verbosity %}
                  {% case v %}
                    {% when 'brief' %}{{ position.brief_summary | markdownify }}
                    {% when 'verbose' %}{{ position.verbose_summary | markdownify }}
                    {% else %}{{ position.standard_summary | markdownify }}
                  {% endcase %}
            </div>
          </div>
        {% endfor %}
      {% elsif section.name == 'skills' %}
        {% assign skillset = site.resume_skills | sort: 'sorter' %}
        {% for skill in skillset | where: skill.display %}
          <div class="skills">
            <p><span class="skill-name">{{ skill.name }}</span>: <span class="skill-skills">{{ skill.skills }}</span></p>
          </div>
        {% endfor %}
      {% else %}
        <div class="other-content">
          <p class="other-content">{{ section.content | markdownify }}</p>
        </div>
      {% endif %}
  </div>
  {% endfor %}
</div>
