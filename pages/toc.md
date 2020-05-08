---
layout: page
title: Table Of Contents
permalink: /toc/
page_name: toc
---

# Table Of Contents

Welcome to the {{ site.title }} learning platform! Here you can quickly jump to a particular section.

{% include util/note.html
    note="This syllabus is aimed at people with little programming experience and who want to start
    learning Ruby."
%}

{% include notice.html
    primary="The content of the syllabus is still in building stage."
    secondary="However, you can still begin your learning."
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
