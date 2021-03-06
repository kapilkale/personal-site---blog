---
layout: post
title: "Gmail's Second Major Problem"
date_published: "1/24/2013"
author: Kapil
published: true
---

Gmail's first problem is UX speed, and it's been well documented by others. \[a\]

The second is a **sporadic but massive delivery lag**. Where emails arrive in my inbox hours after they were sent.

This is a problem with Google's mail servers. Here's an example of an email with a 2 hour delivery lag (headers parsed by Google's [header analyzer](https://toolbox.googleapps.com/apps/messageheader/)):

<a href="/gmail_lag_full.jpg"><img src="/gmail_lag_small.jpg"></a>

This particular email was so important that I had to get on the phone with the sender. He forwarded 4 additional copies (!) that also had 2 hour delays on them.

This issue has happened 2-3 times in the past month. When it happens, it affects 20-30% of the emails coming into my inbox. Attachments seem to have no impact. The sender has no impact either- it happens with people I email 20 times a day within the same Google Apps account. \[b\]

I'm not sure about prevalence; in fact, one of my motivations in writing this is to see how many other people this is happening to. Google has seen and solved [problems like this before](http://thenextweb.com/google/2012/04/03/google-says-an-issue-with-gmail-is-delaying-under-3-of-messages-with-attachments/), but mine seems to be different. Their own support page [gives no reason](http://support.google.com/mail/bin/answer.py?hl=en&answer=82458).

Please fix it Google. And if you can't, do two things:

1. Create a Gmail uptime notifier. Like [Heroku](http://status.heroku.com) or [Stripe](https://status.stripe.com). If I don't get something I'm expecting, it'd be nice to know that one of the mail servers is backed up or undergoing maintenance. EDIT: [it exists](http://www.google.com/appsstatus)

2. Take my money. I'd pay $50 / month to get reliable service; others would be willing to pay [orders of magnitude more](http://paulgraham.com/ambitious.html).

***

\[a\]  My friend Jack from [SeatGeek](http://www.seatgeek.com/super-bowl-tickets) did an outstanding job [identifying the cause](http://jackg.org/gmail-as-a-facade). Paul Graham has explained it best when he said ["If you made something no better than GMail, but fast, that alone would let you start to pull users away from GMail."](http://paulgraham.com/ambitious.html).

\[b\] At [GiftRocket](http://www.giftrocket.com) we do team discussions over email. Getting emails out of order results in utter confusion about the proceedings. Threads that were archived get brought back into my inbox because an email from 6 hours before finally arrives.
