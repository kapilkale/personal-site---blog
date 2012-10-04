---
layout: post
title: "Use Jekyll To Keep Your Blog From Folding Under Traffic"
date_published: "9/29/2012" 
author: Kapil
---

I've seen a lot of blogs fold under traffic, particularly on Hacker News.

I'm not sure why this happens, but I've seen it happen under not-that-crazy traffic loads. Anecdotally, a HN story at around #10 will have around 100 concurrent visitors staying for 30 seconds each, so perhaps a three requests per second. I know nothing about server performance, but a setup with a few processes should be able to handle this no problem.

One way to solve this problem is to use third-party blog services. Posterous, Tumblr, and other microblogging-as-a-service packages seem handle the traffic, at the tradeoff of hosting the blog on [their own their domain](http://ycombinator.posterous.com). This isn't great if for blogs who want the associated SEO benefit of inbound links to their own domain. Also not great for companies or people who want lots of customization (e.g. to get readers into a conversion funnel).

Scaling up  processes manually on AWS or Heroku works but is slightly annoying since it is hard to predict when traffic will spike. Programmers better than myself can probably write scripts to do this, but this seems inelegant given blog pages are static assets and should be quick to load anyway.

*The best solution* I've found to the problem is to use [Jekyll](http://www.jekyllrb.com), a static site generator, to create static html files. 

This solution has held up to a couple hundred concurrent visitors with a single Heroku process with no perceptible decrease in performance \[1\], and I'm pretty sure I'm not even doing it right. \[2\]

This blog's code is [hosted publicly on Github](https://github.com/kapilkale/personal-site---blog) and demonstrates the simplicity behind Jekyll's implementation.
* There's a basic Sinatra app. \[3\], which is probably unnecessary but I keep for personal purposes.
* There's a \_config.yml in the repo citing where posts are written in markdown, and where they'll be sent to when compiled.
* There's a layout for posts.
* Typing Jekyll into the command line compiles the posts into HTML files.

Unfortunately, this leaves users to configure things like RSS feeds, sharing buttons, tags, styling, etc. But I'd expect some of the people who are trying to run traffic-heavy company or personal blogs might also want to customize such things.

\[1\]I'm hosting on the free Heroku plan for which I have one process only. We used a similar configuration for the [GiftRocket blog](http://www.giftrocket.com) and it held up to over a thousand concurrent visitors.

\[2\] There should be a way to configure the server to render an index.html file for a given public route automatically (e.g. for a request to /blog/use-jekyll-for-massive-blog-traffic render /blog/use-jekyll-for-massive-blog-traffic/index.html). Right now, I'm having Sinatra [read the file](https://github.com/kapilkale/personal-site---blog/blob/master/home.rb), which I suspect takes more time than if it were configured lower down the stack. If you know what I should be doing, would love to hear it.

\[3\] Unnecessary, but I figured I might actually host some small projects here.