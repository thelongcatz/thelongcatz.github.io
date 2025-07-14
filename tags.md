---
layout: page
title: Tags
---
<ul class="related-posts">
  {% for tag in site.tags %}
    <li class="h4">
      <a class="flip-title" href="{{ tag[0] | xml_escape }}">
        {{ tag[0] }}
      </a>
      <a href="/feeds-by-tag/{{ tag[0] }}.xml">
        <span class="icon-rss"></span>
        <span class="sr-only">RSS for {{ tag[0] }}</span>
      </a>
    </li>
  {% endfor %}
</ul>
