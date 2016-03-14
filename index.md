---
layout: page
title: Home
tagline: Popgen results and more
---
{% include JB/setup %}

### About
This site contains small results, reviews, meeting reports and things that I am 
working on, or have worked on but given up on. Posted here for my own convenience, and in case anyone else is interested. 

### Contact
My [website][home], [github][github] and [twitter][twitter].
Email me at iain_mathieson at hms.harvard.edu. 

### Posts
<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

[home]: http://genetics.med.harvard.edu/Reich_Lab/People/imathieson/index.html
[github]: https://github.com/mathii
[twitter]: https://twitter.com/mathiesoniain


