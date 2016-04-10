---
layout: "post"
author: Cam Huynh
title: Monkey Patching for good
---

![Monkey Patch For Good](/assets/monkey_patch.jpg)

Monkey-patching has been widely considered as bad practice in software development, in terms of source code management and maintainability.

Anyway, I believe everything has its own reason to exist, and below are something might change your mind about Monkey Patching.

### Find yourself in development environment

Tired of keep typing something like `User.find_by_username('jack')` in Rails console? Use this.

Monkey patch your object class in `.irbrc`

<script src="https://gist.github.com/huynhquancam/7ed332ccde5db1215f62282696e357d1.js"></script>

Then now `User.find_me` will return your favourite test user.

### Inspect Object

Tired of keep typing this?

<script src="https://gist.github.com/huynhquancam/ae7b227a0e5213485a94fecc99d1e422.js"></script>

Then this might save your time.

<script src="https://gist.github.com/huynhquancam/541a3bb14720731b1a31546751980766.js"></script>

Convinced yet? Leave your thoughts below!
