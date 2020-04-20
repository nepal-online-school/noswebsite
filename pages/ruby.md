---
layout: page
title: Ruby Syllabus
permalink: /ruby/
---

# Ruby Syllabus

Welcome to the syllabus of Ruby programming language.! Here you can quickly jump to a
particular section of the syllabus.

<div class="section-index">
    <hr class="panel-line">
    {% for post in site.ruby  %}
    <div class="entry">
    <h5><a href="{{ post.url | prepend: site.baseurl | append: '.html' }}">{{ post.title }}</a></h5>
    <p>{{ post.description }}</p>
    </div>{% endfor %}
</div>
