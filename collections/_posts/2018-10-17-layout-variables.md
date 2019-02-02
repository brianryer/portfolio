---
layout: default
title:  "Jekyll's the doctor."
tags: [build-log, getting-started]
time-comment: ...middle of the afternoon...
---

I moved the logic handling variations in resume section content out of the layout and into the content, where it belongs. My changes work in so far as the pages render as they did previously,  but Liquid is somehow not getting the page variable "verbosity". It does display it, but it is not controlling the display of sections as I thought it should.
