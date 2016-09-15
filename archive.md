---
layout: page
title: Blog archive
---
<div class="page-content wc-container">
	<div class="post">
		<h1>Blog Archive</h1>  
		{% for post in site.posts %}
			{% capture currentyear %}{{post.date | date: "%Y"}}{% endcapture %}
			{% if currentyear != year %}
				{% unless forloop.first %}</ul>{% endunless %}
					<h5>{{ currentyear }}</h5>
					<ul class="posts">
					{% capture year %}{{currentyear}}{% endcapture %} 
				{% endif %}
			<li><a href="{{ post.url | prepend: site.baseurl | prepend: site.url}}">{{ post.title }}</a></li>
	{% endfor %}
	</ul>
	</div>
</div>