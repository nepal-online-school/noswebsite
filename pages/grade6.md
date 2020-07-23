---
layout: page
title: Grade 6
permalink: /grade6/
page_name: grade6
---

# Grade 6

Welcome to the {{ site.title }} learning platform! Here you can quickly jump to a particular section.

{% include util/note.html
    note="This syllabus is aimed at people with little programming experience and who want to start
    learning Ruby."
%}

<div class="section-index">
  <hr class="panel-line">
  {% for page in site.toc %}
    {% if page.type == "section" %}
      <div class="entry">
        <h5>
          <a href="{{ page.url | remove: 'index' | prepend: site.baseurl }}">{{ page.title }}</a>
        </h5>
        <p class="mb-0">{{ page.description }}</p>
      </div>
    {% endif %}
  {% endfor %}
</div>
