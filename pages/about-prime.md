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
        <h3>{{ section.company }}</h3>
        <p>{{ section.summary_brief }}</p>
        <p>{{ section.thisthing }}</p>
      </div>

  {%- endfor -%}
</div>


---
