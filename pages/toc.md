---
layout: page
title: Table Of Content
permalink: /toc/
---

# Ruby Guru Syllabus

Welcome to the syllabus of Ruby programming language.! Here you can quickly jump to a
particular section of the syllabus.

<div class="section-index">
    <hr class="panel-line">
    {% for link in site.toc  %}
    <div class="entry">
      <h5>
        <a href="{{ link.url | remove: 'index' | prepend: site.baseurl }}">{{ link.title }}</a>
      </h5>
      <p>{{ link.description }}</p>
    </div>
    {% endfor %}
</div>
