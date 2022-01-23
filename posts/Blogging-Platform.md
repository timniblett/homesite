---
title: Blogging Platform
summary: The choice of blogging platform in 2019
date: 2019-06-23
tags:
  - post
  - blog
  - tech

---

My first blog, which is still [available][1], was on Google’s Blogger platform back in 2004. Blogger makes it super easy to create posts and it has built in syndication and commenting.

There are a other full-service platforms available now.  [Medium][2], [Tumblr][3] and perhaps [WordPress][4] look like the main options. I’m including WordPress even though it requires more technical expertise and has much greater scope for non-blog activities. 

By default you are expected to type posts directly in to these systems.  What I want to do it to have blogging as part of my workflow: going straight from Emacs/Ulysses to publication. For this to work with these platforms requires some form of integration.

[Ulysses][5] has integrations for [Ghost][6], Medium and WordPress which means that, after some setup, you can 1-click publish to the platform.  This is convenient but means that I won’t have a Git repository with a record of my published posts without more work. There is also the question of what happens if I want to go back and edit a previous post. The integrations are not close enough AFAIK to make this seamless.

An alternative which provides a tighter integration between a Git repo. and a blog is to use a [static website generator][7] which compiles the entire blog from the Git repo. This removes the problem of updates since we always rebuild everything.

It is possible to omit the local compile by using [Netlify][8]. You can link a Git repository to your Netlify account and fire a webhook when the master branch is updated. If you are using a supported static site generator Netlify will do the build for you.  The advantage here is that you can update your blog from your phone or tablet, without requiring the compile environment.

I am starting with [eleventy][9] as the compiler. This is a static website generator written in JavaScript running on Node. Netlify supports Node apps, so the automatic update on push to Git works.

## Pros and Cons

This approach requires a certain amount of technical knowledge and time to set up, which is why the full-service platforms are successful. There are, however, advantages to this approach.
1. You don’t need heavyweight tracking or ad tech. This makes the blog very lightweight and privacy-friendly.
2. Your content is stored in a Git repository.  Your content is future-proof and can be repurposed whenever you choose.

On the debit side a static website does not have built-in commenting, analytics, or social marketing via reposts to Twitter, Facebook etc.  I’ll consider these aspects later.





[1]:	https://timniblett.blogspot.com/
[2]:	https://medium.com/
[3]:	https://www.tumblr.com/
[4]:	https://wordpress.com/
[5]:	https://ulysses.app/
[6]:	https://ghost.org/
[7]:	https://github.com/myles/awesome-static-generators
[8]:	https://www.netlify.com/
[9]:	11ty.io