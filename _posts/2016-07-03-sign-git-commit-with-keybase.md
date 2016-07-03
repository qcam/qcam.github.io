---
layout: "post"
author: Cam Huynh
title: Sign Git commits with Keybase
description: Show you how to sign your Git commit with Keybase GPG key, and how to public your key on Github
---

Keybase is an public key crypto for everyone, maps your identity to your public keys, and vice versa.

This post will show you how to sign your Git commit with Keybase GPG key, and how to publish your key to Github

## Generate a new GPG key

In case you haven't had any GPG keys on Keybase

{% highlight shell %}
keybase pgp gen --multi

# then follow the instruction, select "Upload your key to Keybase"
{% endhighlight %}

## Import GPG key from Keybase

In case you already have GPG keys on Keybase

{% highlight shell %}
# Import secret key from keybase
keybase pgp export --secret | gpg --allow-secret-key-import --import
{% endhighlight %}

To check if your key has been imported into your local GPG secret keys

{% highlight shell %}
gpg --list-secret-keys
{% endhighlight %}

This is how it looks like if successfully imported.

{% highlight shell %}
# Private key basic information

sec   4096R/BC775C77 2016-04-09 [expires: 2032-04-05]
uid                  John Doe <john.doe@gmail.com>
ssb   4096R/7BDF34CD 2016-04-09
{% endhighlight %}

## Sign Git commit

If you want to sign your Git commit with the key generated/imported

{% highlight shell %}
git config --global user.signingkey <key-id>
# key-id is **BC775C77** for the sample private key above
{% endhighlight %}

## Import Public key to Github

To get your commit verified by Github like below

![alt text](https://s3-ap-southeast-1.amazonaws.com/kipalog.com/87b504be-fa41-11e5-9140-6dc8b7203c31.png_6xb7qpwfxi)

To get your public key

{% highlight shell %}
keybase pgp export
{% endhighlight %}

Then attach the key to Github

![alt text](https://s3-ap-southeast-1.amazonaws.com/kipalog.com/gpg-key-paste.png_p3u0cg5vcw)

That's it! Feel free to leave your comments.
