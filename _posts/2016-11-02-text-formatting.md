---
layout: post
title: "Text formatting"
date: 2016-11-02 16:25:06
tags: reference
description: Text formatting examples.
---

# Text formatting example

Some examples of text formatting for some common text elements.

# Headers

# Header1

## Header2

### Header3

#### Header4

# Emphasis

Italics: `*asterisks*` -> *asterisks* or `_underscores_` -> _underscores_.

Bold: `**asterisks**` -> **asterisks** or `__underscores__` -> __underscores__.

You also can combine them: `**asterisks and _underscores_**` -> **asterisks and _underscores_**.

# Blockquotes and notes

{% highlight bash %}
>Blockquotes
{% endhighlight bash %}

>Blockquotes

Using very cool [feature](http://kramdown.gettalong.org/quickref.html#block-attributes) of kramdown which allows to assign any attribute to a block-level element I've added note and warning:

{% highlight bash %}
>Note 
{: .note}
{% endhighlight bash %}

>Note 
{: .note}

{% highlight bash %}
>Warning 
{: .note .warning}
{% endhighlight bash %}

>Warning 
{: .note .warning}

# Keyboard buttons

In case you need to show some keyboard shortcuts, like `Ctrl`{: .key}+`A`{:.key} use following construction:

{% highlight bash %}
`Ctrl`{: .key}+`A`{:.key}
{% endhighlight bash %}

Example of keyboard shortcuts in a terminal:

`Ctrl`{: .key} + `A`{: .key} = move cursor to beginning of line
`Ctrl`{: .key} + `E`{: .key} = move cursor to end of line
`Ctrl`{: .key} + `C`{: .key} = kills the current process.
`Ctrl`{: .key} + `Z`{: .key} = sends the current process to the background.
`Ctrl`{: .key} + `D`{: .key} = logs you out.
`Ctrl`{: .key} + `R`{: .key} = finds the last command matching the entered letters.