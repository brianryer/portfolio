---
verbosity: verbose
---

{% include resume_menu.md %}
{% capture v %}
{{ page.verbosity }}
{% endcapture %}
{% include resume_body.md theverbosity=v %}
