---
layout: page
title: Table Of Contents
permalink: /toc/
---

# Table Of Contents

Welcome to the {{ site.title }} Documentation pages! Here you can quickly jump to a
particular page.

<div class="section-index">
  <hr class="panel-line">
  {% for page in site.toc %}
    {% if page.type != "section" %}
      <div class="entry">
        <h5>
          <a href="{{ page.url | remove: 'index' | prepend: site.baseurl }}">{{ page.title }}</a>
        </h5>
        <p>{{ page.description }}</p>
      </div>
    {% endif %}
  {% endfor %}
</div>