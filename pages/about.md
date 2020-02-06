---
title: About
layout: default
permalink: pages/about.html
---

# Hello, again.

I'm Brian Ryer. If you're looking for my personal site, you've found it.

I live with my family in the Pacific Northwest–Portland, Oregon specifically–where we enjoy as many of the things the region has to offer which time and inclination allow. It is a beautiful part of the country, both in its natural surroundings and in the kind of people that have been drawn here over the years. Viva Cascadia!

I was born in New York, grew up in Las Vegas, spent my teen years in Southern California, and lived in Europe for about 20 years before putting down roots here in Stumptown. Whew!

I trust you’ll take away something useful from what you find here. 

---

<div>
{%- assign skillset = site.data.skills.skills | sort: "name" -%}
   {%-  for skill in skillset -%}
     <dt>{{ skill.name }}</dt>
    <dd>{{ skill.cat.name}}</dd>
   {% endfor %}  
</div>

---

<div>
{%- assign categories = site.data.categories.categories | sort: "name" -%}
   {%-  for cat in categories -%}
     <dt>{{ cat.name }}</dt>
     {%- assign catskills = cat.skills -%}
     {%-  for catskill in catskills -%}
     <dd>{{ catskill.name}}</dd>
    {% endfor %}  
   {% endfor %}  
</div>

---

<div>
{%- assign positions = site.data.positions.positions -%}
   {%- for thisposition in positions -%}
     <dt>{{ thisposition.title }}</dt>
    <dd>{{ thisposition.summary_brief}}</dd>
        {%- assign positionskills = thisposition.skills -%}
        {%- for thisskill in positionskills -%}
    <dd>{{ thisskill.name}}</dd>
        {% endfor %}  
   {% endfor %}  
</div>

---

We made 1 million dollars {% comment %} in losses {% endcomment %} this year