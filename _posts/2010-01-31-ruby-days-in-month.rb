---
layout: post
title:  How many days in a month
date:   2010-01-31 23:37:42
---

<p>The following returns the amount of days in a given year and month, including leap years.</p>

{% highlight ruby %}
(Date.new(year, 12, 31) << (12-month)).day
{% endhighlight %}

<p>The beauty of Ruby.</p>

<p>Credits to <span class="vcard"><span class="fn">Tim Morgan</span></span> for his <a href="http://snippets.dzone.com/posts/show/4397" class="ext">snippet</a>.</p>
