---
title: About Prime
layout: default
---

# Hello, again, again.

<div id="body" class="{{ include.classname_passedwith_include }}">
  {%- assign sorted_sections = site.data.skills -%}
  {%- for section in sorted_sections -%}
  {%- unless section.display == 0 -%}
      <div class="{{ section.name }}">
        <h1>{{ section.name }}</h1>
        <p class="{{ section.name }} body">{{ section.content }}</p>
      </div>
\ {%- endunless -%}
  {%- endfor -%}
</div>


---
