---
layout: "post"
author: Cam Huynh
title: Provision AliCloud
---

Last month we @ Dadadee were pretty excited to start moving off from Amazon Web Service to AliCloud.
This post shares how our application, written in Ruby on Rails, is built and deployed.

Note: I assume you have some experience with Ansible and Docker.

### Create your instance on AliCloud

Let's initiate a Generation II, 2-core and 4GB RAM instance.

Although sometimes the console is buggy, generally AliCloud is quite easy to start off.

Please note to set your root password, in order to SSH later.

### Provision your server with Ansible

As of I wrote this post, AliCloud's apt mirror was still inaccessible, so we will need to choose another alternative mirror
<script src="https://gist.github.com/huynhquancam/3f4095496720304d79d3.js"></script>

Your sources.list could be like this
<script src="https://gist.github.com/huynhquancam/54e4fb5f527710f03a2c.js"></script>

Let's set up some prerequisite packages

<script src="https://gist.github.com/huynhquancam/625d110f2531b46f5506.js"></script>

Then let's install Docker

<script src="https://gist.github.com/huynhquancam/3d66cb90662f4449575c.js"></script>

OK, let's pull our docker image from Registry (AWS ECR, Docker Hub or Quay, etc.)

<script src="https://gist.github.com/huynhquancam/fe5296227f94e6b9994c.js"></script>

Run the image

<script src="https://gist.github.com/huynhquancam/ea2515828a4b0473570a.js"></script>

That's it! Feel free to leave your comments below! :-)

