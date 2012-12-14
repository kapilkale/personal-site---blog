---
layout: post
title: "The Worst UI Pattern in Existence"
date_published: "12/13/2012" 
author: Kapil
published: true
---

Infinite scroll + footer. Scroll down to get to the footer, and just as you start reading the links the whole thing disappears before you as new content gets inserted into the page. Repeat ad nauseum.

Facebook and LinkedIn's homepages use this pattern. Their [world-class design teams](https://www.airbnb.com/meetups/hzfb35n3h-design-talk-ben-blumenfeld) are aware of its flaws, given their half-hearted attempts to monkeypatch the problem.

LinkedIn's solution is to end the infinite scroll after three reloads. But why make a user deal with 3 terrible UI events before they get what they want?

Facebook's solution is smarter- they put footer links in the right sidebar, which is excluded from the infinte scroll. But there's a second footer- the normal footer- at the bottom of the page where expected.

The first footer gives slightest flirtation before it disappears under the additional news feed content. And that flirtation distracts the user from the actually-accessible second footer. I think both footers have the same content, but I haven't had a long enough look at the bottom footer to know what's there.

Come on, guys.