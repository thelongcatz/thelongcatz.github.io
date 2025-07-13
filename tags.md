---
layout: page
title: Tags
---
<h2>Tags</h2>
<ul>
  {% for tag in site.tags %}
    <li>
      <a href="{{ tag[0] | xml_escape }}">
        {{ tag[0] }}
      </a>
      <a href="/feeds/{{ tag[0] }}.xml">
        <span class="icon-rss"></span>
        <span class="sr-only">RSS for {{ tag[0] }}</span>
      </a>
    </li>
  {% endfor %}
</ul>
