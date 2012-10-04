---
layout: post
title: "Use Jekyll To Keep Your Blog From Folding Under Trafic"
date_published: "9/29/2012" 
author: Kapil
---

I've seen a lot of blogs fold under traffic, particularly on Hacker News. 

One good way to solve this problem is to use third-party hosting for your blog. Posterous, Tumblr, and other microblogging-as-a-service packages seem to do a good job handling the traffic. But this also lends itself to a problem: those blogs tend to be hosted on subdomains of their respective sites (e.g. http://ycombinator.posterous.com). This can be bad if you want either the ability to customize the page to promote your brand, or if you want the associated SEO benefit of inbound links.

You can also scale up your processes manually on AWS or Heroku but this is slightly annoying since you don't always know when traffic will spike. Programmers better than myself can probably write scripts to do this, but this seems inelegant.

The thing about blog posts is that they're static files and shouldn't require any substantial server response time. The best solution I've found to the problem is to use [Jekyll](http://www.jekyllrb.com), a static site generator, to create static html files. 

This solution has held up to 150 concurrent visitors for a couple hours with no perceptible decrease in performance \[1\], and I'm pretty sure I'm not even doing it right. \[2\]

This blog's code is [hosted publicly on Github](https://github.com/kapilkale/personal-site---blog) and demonstrates the simplicity behind Jekyll's implementation.
* There's a super-basic Sinatra app, which is probably unnecessary but I keep for personal purposes.
* There's a \_config.yml in the repo citing where posts are written in markdown, and where they'll be sent to when compiled.
* There's a layout for posts and a homepage.
* I type <pre>Jekyll</pre> into the command line to compile the posts into HTML files.

Unfortunately, this leaves you to configure things like RSS feeds, social sharing buttons, tags, and overall style. But I'd expect some of the people who are trying to run traffic-heavy blogs might also want to customize such things. 

\[1\]I'm hosting on the free Heroku plan for which I have one process only. We used a similar configuration for the [GiftRocket blog](http://www.giftrocket.com) and it held up to over a thousand concurrent visitors.

\[2\] There should be a way to configure the server to render an index.html file for a given public route automatically (e.g. for a request to /blog/use-jekyll-for-massive-blog-traffic render /blog/use-jekyll-for-massive-blog-traffic/index.html). Right now, I'm having Sinatra [read the file](https://github.com/kapilkale/personal-site---blog/blob/master/home.rb), which I suspect takes more time than if it were configured lower down the stack.