---
layout: default
title: Blogs
permalink: /blogs/
---

<!-- Blogs list -->
{% for post in site.posts %}
<div class="post-area">
  <a href="{{ post.url | prepend: site.baseurl }}" class="bold">{{ post.title }}</a>
  <p class="post-date">{{ post.date | date_to_long_string }}
      {% include read-time.html
                 content=post.content
                 bracket_start='('
                 bracket_end=')'
                 unit='min'
                 approx='true'
                 caption='read'
      %}
  </p>
  <p>
    {{ post.content | strip_html | truncatewords: 50 }}
  </p>
</div>
{% endfor %}
