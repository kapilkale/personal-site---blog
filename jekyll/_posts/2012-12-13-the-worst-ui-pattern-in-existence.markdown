---
layout: post
title: "The Worst UI Pattern in Existence"
date_published: "12/13/2012" 
author: Kapil
published: true
---

Infinite scroll + footer. Scroll down to get to the footer, and just as you start reading the links the whole thing disappears before you as new content gets inserted into the page. Repeat ad nauseum.

[Facebook](http://www.facebook.com) and [LinkedIn](http://www.linkedin.com)'s homepages use this pattern. Their [world-class design teams](https://www.airbnb.com/meetups/hzfb35n3h-design-talk-ben-blumenfeld) are aware of its flaws, given their half-hearted attempts to monkeypatch the problem.

LinkedIn's solution is to end the infinite scroll after three reloads. But as a result, a user has to deal with 3 terrible UI events before they get what they want. Will they overcome the [conditioning](http://www.daviesscoll.u-net.com/joc/students/assignments/asassignments/classical.htm) or just give up?

Facebook's solution is smarter- they put footer links in the right sidebar, which is excluded from the infinte scroll. But there's a second footer- the normal footer- at the bottom of the page where expected.

The first footer flirts with you for a moment before it disappears under the additional news feed content. That brief glimpse distracts from the second footer; I'd bet most users don't even see it. I think both footers have the same content, but I haven't had a long enough look at the bottom footer to know what's there.

Come on, guys.