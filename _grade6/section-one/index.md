---
title: Section One
date: 15th April, 2020 1:00:00
type: section
description: Section One - getting familiar with language
permalink: /toc/section-one/
---

# Welcome to Section One (getting familiar with language)

__Hello!__

Say _Hi_ to Ruby.

In this section, you will be getting yourself familiar with the Ruby language.

Ruby is a dynamic, object-oriented, general-purpose and open-source programming language. It is a very
simple, friendly and easy to use programming language.

#### Have a wonderful journey in learning Ruby.

<div class="section-index">
  <hr class="panel-line">
  {% for page in site.toc %}
    {% if page.parent == "/toc/section-one/" %}
      <div class="entry">
        <h5>
          <a href="{{ page.url | remove: 'index' | prepend: site.baseurl }}">{{ page.title }}</a>
        </h5>
        <p class='mb-0'>{{ page.description }}</p>
      </div>
    {% endif %}
  {% endfor %}
</div>
