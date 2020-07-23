---
layout: page
title: Grade 6
permalink: /grade6/
page_name: grade6
content_type: class_syllabus
---

## Welcome to Grade 6 learning content.

{% include util/note.html
    note="All the videos are in Nepali."
%}

{% if site.grade6.size > 0 %}
  <div class="section-index">
    <div class="mt-5">
      <h2>Subjects</h2>
    </div>  
    <hr class="panel-line">
    {% for page in site.grade6 %}
      <div class="entry">
        <h5>
          <a href="{{ page.url | remove: 'index' | prepend: site.baseurl }}">{{ page.title }}</a>
        </h5>
        <p class="mb-0">{{ page.description }}</p>
      </div>
    {% endfor %}
  </div>
{% endif %}