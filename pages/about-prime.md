---
title: About Prime
layout: default
output: true
---

# Hello, again, again.

<div id="body">
  {%- assign sorted_sections = site.data.skills -%}
  {%- for section in sorted_sections -%}
  {%- unless section.display == 0 -%}
      <div class="{{ section.name }}">
        <h1>{{ section.name }}</h1>
        <p class="{{ section.name }} body">{{ section.description }}</p>
      </div>
  {%- endunless -%}
  {%- endfor -%}
</div>


---
