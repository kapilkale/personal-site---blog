---
layout: post
title: "The Git Screwup Cheatsheet"
date_published: "9/29/2012" 
author: Kapil
published: false
---

#I've been using Git for about a year and a half in a small team environment with Heroku for deployment. Most of the common Git commands have become second nature (commits, pushing, etc.), but every once in a while I'd do something stupid and find myself Googling for the fix. 

## I made some changes that I want to get rid of, but I haven't staged or committed them.



new files: rm file or folder

## I made some changes that I want to get rid of and they're added to the staging area

## I committed something and I want to un-commit it.

## I committed several times and want to go back to

## I committed and pushed, either to Github or Heroku, and I want to go back to a previous commit.

git log

q

git reset 4c3ebda80182c07b2282017198297168a09e5426

checkout / delete staged files

git push -f if forcing a push of a previous commit and you're cool with losing the other commits.

## I pushed a bug to Heroku and now our application is down. I need to go back to the last working version.



## 

## 

#### Notes