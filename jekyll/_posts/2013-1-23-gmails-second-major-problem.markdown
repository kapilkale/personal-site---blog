---
layout: post
title: "GMail's Second Major Problem"
date_published: "1/23/2013"
author: Kapil
published: true
---

GMail is a brilliant piece of software. But it's got some flaws.

The first is UX speed. This has been brought up time and time again so I'll ignore. \[1\]

The second is delivery time. Mail can take hours to get delivered, and it is Google's fault.

I know it is Google's fault because the email headers identify the source of the lag to be Google's mail servers. Here's an example of a delayed email, parsed by Google's [header analyzer](https://toolbox.googleapps.com/apps/messageheader/):

<a href="/gmail_lag_full.jpg"><img src="/gmail_lag_small.jpg"></a>

This particular email was important enough that I had to get on the phone with the sender. He forwarded 4 additional copies (!) that also had 2 hour delays on them. For people who live on email, this is unacceptable.

This sort of thing leads to all sorts of problems. For example, at [GiftRocket](http://www.giftrocket.com), we do team discussions over email. When lag happens duringt hose discussions, responses to a thread arrive out of order and result in confusion about context.

This issue has happened 2-3 times in the past month. When it happens, it affects 20-30% of the emails coming into my inbox. Let me know via HN or a comment if you've experienced this too so I have a gauge on how widespread the problem is. \[2\], \[3\]

I don't know what the solution is. But I do know this:

1. GMail should have an uptime notifier. Like [Heroku](http://status.heroku.com) or [Stripe](https://status.stripe.com). If I don't get something I'm expecting, it'd be nice to know that one of the mail servers is backed up or undergoing maintenance.

2. I'd pay GMail money to make this go away. I doubt I'm the only one, given there are others out there [willing to pay $1000 / month for a better product](http://paulgraham.com/ambitious.html).

Please, GMail, take my money.

***

\[1\]  My friend Jack from [SeatGeek](http://www.seatgeek.com/super-bowl-tickets) did an outstanding job [identifying the cause](http://jackg.org/gmail-as-a-facade). Paul Graham has explained it best when he said ["If you made something no better than GMail, but fast, that alone would let you start to pull users away from GMail."](http://paulgraham.com/ambitious.html).

\[2\] Gmail makes a 99.9% uptime promise in the [Google Apps SLA](http://www.google.com/apps/intl/en/terms/sla.html). I have no idea how this sort of lag gets accounted for in their uptime calcs.

\[3\] Attachments seem to have no impact.