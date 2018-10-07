# Resume

{% for position in site.resume_positions %}
<p>{{position.name}}</p>
<p>{{position.content | markdownify}}</p>
{% endfor %}

{% for skillset in site.resume_skills %}
<p>{{skillset.name}}</p>
<p>{{skillset.content | markdownify}}</p>
{% endfor %}

{{ site.collections | where: "label", "resume_skills" | first }}
