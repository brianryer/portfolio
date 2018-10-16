---
verbosity: standard
---

{% include resume_menu.md %}
{% capture this_verbosity %}
{{ page.verbosity }}
{% endcapture %}
{% include resume_body.md verbose=this_verbosity %}
