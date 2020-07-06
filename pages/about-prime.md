---
title: About Prime
layout: default
output: true
---

# Hello, again, again.

<div id="body">
  {%- assign sorted_sections = site.data.a_sample -%}
  {%- for section in sorted_sections -%}

      <div class="{{ section.company }}">
        <h1>{{ section.company }}</h1>
      </div>

  {%- endfor -%}
</div>


---
