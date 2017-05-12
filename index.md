---
layout: page
title: Iain Mathieson
tagline: Population Genetics and more
---
{% include JB/setup %}

### About Me
I'm a population geneticist, interested in many areas of human genetics. In the past I've worked on association studies, the distribution of rare variants, the genetics of spatially structured populations and understanding human history using ancient DNA. Right now, my main interest is in understanding the evolution of complex traits in humans, and their relationship to demographic history and natural selection. 

You can find my publications on my [Google Scholar][Google Scholar] page.

### Contact
My [website][home], [github][github] and [twitter][twitter].
Email me at iain_mathieson at hms.harvard.edu. 

### Posts

Here are some small results, reviews, meeting reports and things that I am 
working on, or have worked on but given up on. Posted here for my own convenience, and in case anyone else is interested.

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

[home]: http://genetics.med.harvard.edu/Reich_Lab/People/imathieson/index.html
[github]: https://github.com/mathii
[twitter]: https://twitter.com/mathiesoniain
[Google Scholar]: https://scholar.google.com/citations?user=uiLwrZ4AAAAJ&hl=en

