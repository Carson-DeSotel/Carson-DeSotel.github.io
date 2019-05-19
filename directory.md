---
layout: page
title: Directory
permalink: /directory/
---

Links to all posts currently hosted on the webpage:

<ul>
{% for page in site.posts %}
  <li>
    <a href="{% page.permalink %}">{% page.title %}</a>
    <p>{{ page.excerpt }}</p>
  </li>
{% endfor %}
</ul>
