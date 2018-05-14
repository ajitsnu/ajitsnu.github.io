---
layout: post
title: A short sympy tutorial
category: sympy
similarItemKey: sympy
key: 0
---

## Essential Sympy tutorial for a multivariable calculus course

<!--more-->
<ul>
{% assign sympyPages = site.pages | sort: 'key' %}
{% for link in sympyPages %}

{% if link.categories contains "sympyTutorial"%}

{% if link.key == 0 %}
	 <!-- do nothing -->
{% else %}
 <li>  <a href="{{ link.url }}">{{ link.title}}</a> </li>
{% endif %}



{% endif %}
	    
{% endfor %}



 

