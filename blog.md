---
  layout: default
  title: Blog
---
<div class="listing">
    {% for post in site.posts %}
    <post>
        <post-header class="entry-header">
            <h2 class="entry-title">
            <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
            </h2>
            <p class="published" datetime="{{ post.date }}" pubdate="">
            <a href="{{ post.url | prepend: site.baseurl }}">{{ post.date | date: '%B %d, %Y}} {% if post.time-comment %} {{ post.time-comment }} {% endif %}</a>
            </p>
        </post-header>
        <div class="entry-content">
            {{ post.content }}
        </div>
    </post>
    {% endfor %}
</div>
