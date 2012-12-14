---
layout: post
title: "The Worst UI Pattern in Existence"
date_published: "12/13/2012" 
author: Kapil
published: true
---

Infinite scroll + footer. Scroll through page content to the footer. As you start reading the footer links, the site injects new content into the page and the footer gets pushed down below the fold. Repeat ad nauseum.

[Facebook](http://www.facebook.com) and [LinkedIn](http://www.linkedin.com)'s news feeds use this pattern. I get that most Facebook & Linkedin users don't need to touch the footer, but this doesn't excuse a terrible UI for those that do. Especially when better design options are available.

Their design teams are aware of the issue, but their "fixes" aren't very good.

LinkedIn's solution is to end the infinite scroll after three reloads. But as a result, a user has to deal with 3 terrible UI events before they get what they want. Will they overcome the [conditioning](http://www.daviesscoll.u-net.com/joc/students/assignments/asassignments/classical.htm) or just give up?

<img src="/linkedin_footer.jpg" width="400px">

Facebook's solution is smarter- they put footer links in the right sidebar, which is excluded from the infinte scroll. But there's a second footer- the normal footer- at the bottom of the page where expected:

<img src="/footer.jpg" width="400px">

There are two problems with this design.

First, The brief glimpse of the first footer distracts from the existence of the nontraditionally-placed second footer; I'd bet most users don't even see footer #2.

Second: Footer #2 doesn't have the full set of links. For example, you'd miss the "developers" link because it's buried under "more". Which makes a user want to chase footer #1 all the more.

My proposed solution: get rid of the normal footer, and list a full set of links in footer #2.  When people scroll down looking for footer links, they'll won't see a footer in the normal place, but instead see the floating footer on the right.

<img src="/footer_correct.jpg" width="400px">

<br>
<br>