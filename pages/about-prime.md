---
title: About Prime
layout: default
output: true
---

# Hello, again, again.

<div id="body">
  {%- assign sorted_sections = site.data.skills -%}
  {%- for section in sorted_sections -%}

      <div class="{{ section.name }}">
        <h1>{{ section.name }}</h1>
      </div>

  {%- endfor -%}
</div>


---
