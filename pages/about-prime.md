---
title: About Prime
layout: default
output: true
---

# Hello, again, again.

<div id="body">
  {%- assign sorted_sections = site.data.a_sample.samples -%}
  {%- for section in sorted_sections -%}

      <div class="{{ section.company }}">
        <p>{{ section.company }}</p>
      </div>

  {%- endfor -%}
</div>


---
