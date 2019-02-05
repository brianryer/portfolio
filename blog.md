---
layout: default
title: Blog
---
<h1>Most Recently</h1>

<div class="listing">
  {%- assign posts = site.posts -%}
  {% for post in posts %}
  {%- unless post.output == false -%}
  <post>
  <post-header class="entry-header">
  <h2 class="entry-title"><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></h2>
  <p class="published" datetime="{{ post.date }}" pubdate=""><a href="{{ post.url | prepend: site.baseurl }}">{{ post.date | date: '%A, %B %d, %Y' }} {%if post.time-comment %}{{ post.time-comment}}{% endif %}</a></p>
  </post-header>
  <div class="entry-content"> {{ post.content }} </div>
  </post>
  {% endunless %}
  {% endfor %}
</div>

<!-- If this is a post, show previous/next post links -->
{% if page.id %}

{% if page.previous.url %}
<a href="{{page.previous.url}}">{{page.previous.title}}</a>
{% endif %}

{% if page.next.url %}
<a class="button is-link ellipsis" title="{{page.previous.title}}" href="{{page.next.url}}">{{page.next.title}}</a>
{% endif %}

{% endif %}
