---
layout: post
title: Table styles
date:   2018-02-09 11:07
description: Examples of different table styles
tags: reference
comments: true
---

Below are the examples of the default table styling.

## Simple table

|First Header | Second Header|
|------------ | -------------|
|Content from cell 1 | Content from cell 2|
|Content in the first column | Content in the second column|

>Markdown
{:.filename}
{% highlight raw %}
|First Header | Second Header|
|------------ | -------------|
|Content from cell 1 | Content from cell 2|
|Content in the first column | Content in the second column|
{% endhighlight %}

## Custom styles

It is also possible to change a bit table styles by applying CSS classes. By default there are two classes available:

 - `.wide` - makes table width 100%

|First Header | Second Header|
|------------ | -------------|
|Content from cell 1 | Content from cell 2|
|Content in the first column | Content in the second column|
{:.wide}

>Markdown - note the last line
{:.filename}
{% highlight markdown %}
|First Header | Second Header|
|------------ | -------------|
|Content from cell 1 | Content from cell 2|
|Content in the first column | Content in the second column|
{:.wide}
{% endhighlight %}

 - `.inner-borders` - shows inner borders

|First Header | Second Header|
|------------ | -------------|
|Content from cell 1 | Content from cell 2|
|Content in the first column | Content in the second column|
{:.inner-borders}

>Markdown - note the last line
{:.filename}
{% highlight raw %}
|First Header | Second Header|
|------------ | -------------|
|Content from cell 1 | Content from cell 2|
|Content in the first column | Content in the second column|
{:.inner-borders}
{% endhighlight %}

You can add more such classes by putting them inside **theme.scss**. Here is how the above mentioned classes are defined:

{% highlight scss %}
table.wide {
  width: 100%;
  max-width: 100%;
}

table.inner-borders {
  border-collapse: collapse;
  border-style: hidden;
  td {
    border: 1px solid #5e5e5e;
  }
}
{% endhighlight %}


## Few more examples from kramdown [documentation](https://kramdown.gettalong.org/syntax.html#tables):

|-----------------+------------+-----------------+----------------|
| Default aligned |Left aligned| Center aligned  | Right aligned  |
|-----------------|:-----------|:---------------:|---------------:|
| First body part |Second cell | Third cell      | fourth cell    |
| Second line     |foo         | **strong**      | baz            |
| Third line      |quux        | baz             | bar            |
|-----------------+------------+-----------------+----------------|
| Second body     |            |                 |                |
| 2 line          |            |                 |                |
|=================+============+=================+================|
| Footer row      |            |                 |                |
|-----------------+------------+-----------------+----------------|

>Table header row, two table bodies and a table footer row
{:.filename}
{% highlight raw %}
|-----------------+------------+-----------------+----------------|
| Default aligned |Left aligned| Center aligned  | Right aligned  |
|-----------------|:-----------|:---------------:|---------------:|
| First body part |Second cell | Third cell      | fourth cell    |
| Second line     |foo         | **strong**      | baz            |
| Third line      |quux        | baz             | bar            |
|-----------------+------------+-----------------+----------------|
| Second body     |            |                 |                |
| 2 line          |            |                 |                |
|=================+============+=================+================|
| Footer row      |            |                 |                |
|-----------------+------------+-----------------+----------------|
{% endhighlight %}

---

|---
| Default aligned | Left aligned | Center aligned | Right aligned
|-|:-|:-:|-:
| First body part | Second cell | Third cell | fourth cell
| Second line |foo | **strong** | baz
| Third line |quux | baz | bar
|---
| Second body
| 2 line
|===
| Footer row

>Same as above but shorter
{:.filename}
{% highlight raw %}
|---
| Default aligned | Left aligned | Center aligned | Right aligned
|-|:-|:-:|-:
| First body part | Second cell | Third cell | fourth cell
| Second line |foo | **strong** | baz
| Third line |quux | baz | bar
|---
| Second body
| 2 line
|===
| Footer row
{% endhighlight %}
