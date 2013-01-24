---
layout: post
title: "GMail's Second Major Problem"
date_published: "1/23/2013"
author: Kapil
published: true
---

GMail's first problem is UX speed, and it's been well documented by others. \[1\]

The second is a **sporadic but massive delivery lag**. Where emails arrive in my inbox hours after they were sent.

This is a problem with Google's mail servers. Here's an example of an email with a 2 hour delivery lag (headers parsed by Google's [header analyzer](https://toolbox.googleapps.com/apps/messageheader/)):

<a href="/gmail_lag_full.jpg"><img src="/gmail_lag_small.jpg"></a>

This particular email was so important that I had to get on the phone with the sender. He forwarded 4 additional copies (!) that also had 2 hour delays on them.

This issue has happened 2-3 times in the past month. When it happens, it affects 20-30% of the emails coming into my inbox. Attachments seem to have no impact. The sender has no impact either- it happens with people I email 20 times a day. \[2\]

I'm not sure about prevalence; in fact, one of my motivations in writing this is to see how many other people this is happening to.

Please fix it Google. And if you can't, do two things:

1. Create a GMail uptime notifier. Like [Heroku](http://status.heroku.com) or [Stripe](https://status.stripe.com). If I don't get something I'm expecting, it'd be nice to know that one of the mail servers is backed up or undergoing maintenance.

2. Take my money. I'd pay monthly to get reliable service; others would be willing to pay [orders of magnitude more](http://paulgraham.com/ambitious.html).

***

\[1\]  My friend Jack from [SeatGeek](http://www.seatgeek.com/super-bowl-tickets) did an outstanding job [identifying the cause](http://jackg.org/gmail-as-a-facade). Paul Graham has explained it best when he said ["If you made something no better than GMail, but fast, that alone would let you start to pull users away from GMail."](http://paulgraham.com/ambitious.html).

\[2\] At [GiftRocket](http://www.giftrocket.com) we do team discussions over email. Getting emails out of order results in utter confusion about the proceedings. Threads that were archived get brought back into my inbox because an email from 6 hours before finally arrives.
