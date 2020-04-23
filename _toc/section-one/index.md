---
title: Section One
date: 15th April, 2020 1:00:00
type: section
description: Section One
permalink: /toc/section-one/
---

<div class="section-index">
  <hr class="panel-line">
  {% for page in site.toc %}
    {% if page.parent == "section-one" %}
      <div class="entry">
        <h5>
          <a href="{{ page.url | remove: 'index' | prepend: site.baseurl }}">{{ page.title }}</a>
        </h5>
        <p>{{ page.description }}</p>
      </div>
    {% endif %}
  {% endfor %}
</div>
