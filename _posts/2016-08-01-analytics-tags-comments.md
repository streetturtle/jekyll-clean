---
layout: post
title: "Analytics, tags and comments"
date: 2016-08-01 16:25:06
description: Here you'll find how to setup analytics, tags and comments for your blog
tags: reference
---

# Analytics
 
#### [Google Analytics](http://www.google.com/analytics/)

To enable Google Analytics create an account [here](https://analytics.google.com). Then add your tracking id in `config.xml`, it should look something like `UA-********-1`
 
#### [Yandex Metrica](http://metrica.yandex.com)
 
To enable Yandex Metrica you need to register, create a 'counter' and then copy-paste it's code in `/_includes/yandex-metrica.html` file.

# Tags

To use this feature you simply will need to create a markdown file for each tag which you are using in you site in **tag** folder. To simplify this procedure there is an [/admin]({{site.baseurl}}/admin) page, which outputs the bash command which you just need to run inside **tag** folder of your site. Also don't forget to rerun it when you add a post with new tag.

# Comments

To enable [Disqus](http://disqus.com) register on the site and then just put your name in `_config.xml`. Comments could be switched on and off on per post basis, just put `comments: true` to enable them.