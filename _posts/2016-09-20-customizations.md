---
layout: post
title: "Customizations"
date: 2016-09-20 16:25:06
description: Few customizations available out of the box!
share: true
tags: reference
---

# Accent color

Accent color is color for some important elements, such as links, buttons, icons. Currently accent color is <button class="btn" style="background-color:#3CA2A2; color:#444444">#3CA2A2</button>. This theme has some more predefined colors available in **theme.scss**:

>theme.scss
{:.filename}
{% highlight scss %}
// Several accent colors, choose one or create your own!
$accent-color: #3CA2A2;     // original =)
// $accent-color: #C38FD6;   velvet
// $accent-color: #8FD6B3;   greenish
// $accent-color: #35B4DE;   bluish
// $accent-color: #D2E354;   yellowish
// $accent-color: #52B54B;   green

{% endhighlight %}

You can use one of them (just click the button below to see accent color in action) or define your own!

<button class="btn" style="background-color:#C38FD6; color:#444444">#C38FD6</button>, <button class="btn" style="background-color:#8FD6B3; color:#444444">#8FD6B3</button>, <button class="btn" style="background-color:#35B4DE; color:#444444">#35B4DE</button>, <button class="btn" style="background-color:#D2E354; color:#444444">#D2E354</button>, <button class="btn" style="background-color:#52B54B; color:#444444">#52B54B</button>.
 
<script>
  $('.btn').click(function(){
    var color = $(this).text();
    [].forEach.call($('a'), function(item) {
      item.style.color = color
    })
  })
</script>

<style>
  .label{
    cursor: default;
    border-radius: 5px;
    padding: 5px 8px;
  }
</style>

# Other colors

As Jekyll comes with support of SASS I put colors in variables. Here are the ones which could be easily changed:

>theme.scss
{:.filename}
{% highlight scss %}
$font-color: #dddddd;
$background-color: #292929;
$post-panel-color: #444;
$footer-background-color: #292c2f;
$note-color: #87CEFA;
$warning-color: #ffff00;
{% endhighlight %}

# Background

It is also possible to change the background pattern and color. This theme comes with few patterns pre-installed -- you can check them by clicking on the images below. Or check the [transparenttextures.com](https://www.transparenttextures.com/) -- it has tons of different patterns for background.

<style>
.pattern-list{
    list-style-type: none;
    padding: 0;
}
.pattern{
    height: 100px;
    box-shadow: 0 0 3px 2px rgba(0,0,0,.1);

}
.pattern:hover {
    box-shadow: 0 0 3px 2px rgba(0,0,0,.3);
    transition: box-shadow .2s ease;
    cursor: pointer;
}
.smthg{
    max-width: none !important;
}
.col-sm-6 {
    padding: 5px !important;
}
</style>

<ul class="pattern-list">
<li class="col-sm-6"><div class="pattern" style="background-image:url('{{ '/assets/css/pics/background/3px-tile.png' | relative_url }}')"></div></li>
<li class="col-sm-6"><div class="pattern" style="background-image:url('{{ '/assets/css/pics/background/asfalt-light.png' | relative_url }}')"></div></li>
<li class="col-sm-6"><div class="pattern" style="background-image:url('{{ '/assets/css/pics/background/black-linen.png' | relative_url }}')"></div></li>
<li class="col-sm-6"><div class="pattern" style="background-image:url('{{ '/assets/css/pics/background/food.png' | relative_url }}')"></div></li>
<li class="col-sm-6"><div class="pattern" style="background-image:url('{{ '/assets/css/pics/background/gplay.png' | relative_url }}')"></div></li>
<li class="col-sm-6"><div class="pattern" style="background-image:url('{{ '/assets/css/pics/background/green-dust-and-scratches.png' | relative_url }}')"></div></li>
<li class="col-sm-6"><div class="pattern" style="background-image:url('{{ '/assets/css/pics/background/hexellence.png' | relative_url }}')"></div></li>
<li class="col-sm-6"><div class="pattern" style="background-image:url('{{ '/assets/css/pics/background/random-grey-variations.png' | relative_url }}')"></div></li>
<li class="col-sm-6"><div class="pattern" style="background-image:url('{{ '/assets/css/pics/background/shley-tree-1.png' | relative_url }}')"></div></li>
<li class="col-sm-6"><div class="pattern" style="background-image:url('{{ '/assets/css/pics/background/subtle-grey.png' | relative_url }}')"></div></li>
<li class="col-sm-6"><div class="pattern" style="background-image:url('{{ '/assets/css/pics/background/xv.png' | relative_url }}')"></div></li>
<li class="col-sm-6"><div class="pattern" style="background-image:url('{{ '/assets/css/pics/background/triangles.png' | relative_url }}')"></div></li>
</ul>

<script>
  $('.pattern').click(function(){
    var source = this.style.backgroundImage;
    document.getElementsByTagName('body')[0].style.backgroundImage = source;
    console.log("url('" + source + "'))");
  })
</script>

To change the color go to the **theme.scss** and change the `background-pattern` variable to the name of the pattern image file. To use custom pattern, download it from [transparenttextures.com](https://www.transparenttextures.com/) and place it under **css/pics/background/**.

>theme.scss
{:.filename}
{% highlight scss %}
// use this or pick any from /css/pics/background folder or from transparenttextures.com
$background-pattern: 'random-grey-variations.png';
{% endhighlight %}
