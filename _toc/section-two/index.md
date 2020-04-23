---
title: Section Two
date: 20th April, 2020 1:00:00
type: section
description: Section Two - learning building blocks
permalink: /toc/section-two/
---

### Congratulations on the completion of section one.

# Welcome to Section Two (learning building blocks)

<div class="section-index">
  <hr class="panel-line">
  {% for page in site.toc %}
    {% if page.parent == "section-two" %}
      <div class="entry">
        <h5>
          <a href="{{ page.url | remove: 'index' | prepend: site.baseurl }}">{{ page.title }}</a>
        </h5>
        <p class='mb-0'>{{ page.description }}</p>
      </div>
    {% endif %}
  {% endfor %}
</div>

