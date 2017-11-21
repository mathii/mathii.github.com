---
layout: page
title: Iain Mathieson
tagline: Population Genetics
---
{% include JB/setup %}

### About Me
I'm a population geneticist, interested in many areas of human
genetics. I've worked on association studies, the distribution of rare
variants, the genetics of spatially structured populations and
understanding human history using ancient DNA. Right now, my main
interest is in understanding the evolution of complex traits in
humans, their distribution across human populations, and their
relationship to demographic history and natural selection. 

You can find my publications on my [Google Scholar][Google Scholar] page.

### Contact
My [website][home], [github][github] and [twitter][twitter].
Email me at iain_mathieson at hms.harvard.edu. 

### Posts [![](images/feed-icon-14x14.png)](rss.xml)

Here are some small results, reviews, meeting reports and things that I am 
working on, or have worked on but given up on. Posted here for my own convenience, and in case anyone else is interested.

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

[home]:https://www.med.upenn.edu/apps/faculty/index.php/g275/p8942206l
[github]: https://github.com/mathii
[twitter]: https://twitter.com/mathiesoniain
[Google Scholar]: https://scholar.google.com/citations?user=uiLwrZ4AAAAJ&hl=en

