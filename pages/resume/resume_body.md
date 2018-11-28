<div class="{{ include.theverbosity }}">
  {% assign sorted_sections = site.resume_sections | sort: 'sorter' %}
  {% for section in sorted_sections | where: section.display == 'true' %}
  <div class="{{ section.name }}">
    <h2>{{ section.name | capitalize }}</h2>
    {% if section.name == 'profile' %}
      <div class="profile">
        {% assign v = page.verbosity %}
        {% case v %}
          {% when 'brief' %}{{ section.brief_profile }}
          {% when 'verbose' %}{{ section.verbose_profile }}
          {% else %}{{ section.standard_profile }}
        {% endcase %}
      </div>
    {% elsif section.name == 'experience' %}
      {% assign sorted_positions = site.resume_positions | sort: "sorter" | reverse %}
      {% for position in sorted_positions | where: position.display %}
      <div class="position">
        {% assign v = page.verbosity %}
        {% case v %}
          {% when 'brief' %}
          <div class="position-head">
          <table>
          <colgroup>
            <col style="width:40%">
            <col style="width:60%">
          </colgroup>
          <tbody>
          <tr>
          <td><p><span class="position-title">{{ position.title }}</span><br/><span class="position-company">{{ position.company }}</span><br/><span class="position-location">{{ position.location }}</span><br/><span class="position-dates">{{ position.dates }}</span><br/></p>
          </td>
          <td><p><span class="position-summary">{{ position.brief_summary }}</span></p></td>
          </tr>
          </tbody>
          </table>
          </div>
          {% when 'verbose' %}
          <div class="position-head">
            <p><span class="position-title">{{ position.title }}</span> &ndash; <span class="position-dates">{{ position.dates }}</span><br/>
               <span class="position-company">{{ position.company }}</span>, <span class="position-location">{{ position.location }}</span></p>
          </div>
          <div class="position-summary">
            {{ position.verbose_summary }}
          </div>
          {% else %}
          <div class="position-head">
            <p><span class="position-title">{{ position.title }}</span> , <span class="position-company">{{ position.company }}</span>, <span class="position-location">{{ position.location }}</span>, <span class="position-dates">{{ position.dates }}</span></p>
          </div>
          <div class="position-summary">
            {{ position.standard_summary }}
          </div>
        {% endcase %}
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
      <div class="{{ section.name }}">
        <p class="{{ section.name }}">{{ section.content }}</p>
      </div>
    {% endif %}
  </div>
  {% endfor %}
</div>
