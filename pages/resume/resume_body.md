<div id="resume-body" class="{{ include.theverbosity }}">
  {% assign sorted_sections = site.resume_sections | sort: 'sorter' %}
  {% for section in sorted_sections %}
  {% unless section.display == 'no' %}
  <div class="{{ section.name }}">
    <h2>{{ section.name | capitalize }}</h2>
    {% if section.name == 'profile' %}
      <div class="profile">
        {% assign v = page.verbosity %}
        {% case v %}
          {% when 'brief' %}{{- section.brief_profile -}}
          {% when 'verbose' %}{{- section.verbose_profile -}}
          {% else %}{{- section.standard_profile -}}
        {% endcase %}
      </div>
    {% elsif section.name == 'experience' %}
      <div class="position">
        {% assign sorted_positions = site.resume_positions | sort: 'sorter' | reverse %}
        {% for position in sorted_positions %}
        {% unless position.display == 'no' %}
          <div class="position-head">
          <h4><span class="position-title">{{- position.title -}}</span>, <span class="position-company">{{- position.company -}}</span>, <span class="position-location">{{- position.location -}}</span>, <span class="position-dates">{{- position.dates -}}</span></h4>
          </div>
          <div class="position-summary">
          <p><span class="position-summary">
          {% assign v = page.verbosity %}
          {% case v %}
            {% when 'brief' %}
              {{- position.brief_summary -}}
            {% when 'verbose' %}
              {{- position.verbose_summary -}}
            {% else %}
              {{- position.standard_summary -}}
          {% endcase %}
          </span></p>
          </div>
        {% endunless %}
        {% endfor %}
      </div>
    {% elsif section.name == 'skills' %}
      <div class="skills">
        {% assign skillset = site.resume_skills | sort: 'sorter' %}
        {% for skill in skillset | where: skill.display %}
        <h4><span class="skill-name">{{ skill.name }}</span></h4>
        <p><span class="skill-skills">{{ skill.skills }}</span></p>
        {% endfor %}
      </div>
    {% else %}
      <div class="{{ section.name }}">
        <p class="{{ section.name }}">{{ section.content }}</p>
      </div>
    {% endif %}
  </div>
  {% endunless %}
  {% endfor %}
</div>
