---
  layout: default
  title: Blog
---
<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

<div class="listing">
    {% for post in site.posts %}
    <article>
        <header class="entry-header">
            <h2 class="entry-title">
            <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
            </h2>
            <time class="published" datetime="{{ post.date }}" pubdate="">
            <a href="{{ post.url | prepend: site.baseurl }}">{{ post.date | date: '%B %d, %Y' }}</a>
            </time>
        </header>
        <div class="entry-content">
            {{ post.content }}
        </div>
    </article>
    {% endfor %}
</div>
