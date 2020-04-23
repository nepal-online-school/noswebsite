---
title: Getting Started
date: 15th April, 2020 1:00:00
parent: section-one
tags:
  - installation
  - rvm
  - rbenv
description: Getting started with Ruby
permalink: /toc/section-one/getting-started/
next_link: /toc/section-one/intro
---

# Getting Started

You can use several tools to install Ruby. This page describes how to install Ruby in Linux, macOS or Windows.
There are many ways to install Ruby in each operating systems. I have listed following ways which I would
recommend.

## Install Ruby in Linux

The most recommended way to install Ruby in Linux through [RVM][rvm-link]{:target="_blank"}.
Although, each operating system has their own package manager through which you can install Ruby.
Like using `apt` in Ubuntu as
```
sudo apt-get install ruby-full
```

However, RVM helps in managing multiple Ruby versions. It means you can switch between many versions through RVM.
It is required while working in many projects having different Ruby versions.

### Install GPG keys

As a first step install GPG keys used to verify installation package:

```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```

### Install RVM stable with Ruby:

```
\curl -sSL https://get.rvm.io | bash -s stable --ruby
```

For more information, proceed to [RVM website][rvm-link]{:target="_blank"}.

{% include util/section-divider.html %}

## Install Ruby in Windows

The easiest way to install Ruby in Windows is through [RubyInstaller](https://rubyinstaller.org/){:target="_blank"}.
This is a self-contained Windows-based installer that includes the Ruby language, an execution environment,
important documentation, and more.

Just download the _RubyInstaller_ binary and run it to install like a normal windows software.

{% include util/section-divider.html %}

## Install Ruby in macOS

The recommended way to install Ruby in macOS is through [RVM][rvm-link]{:target="_blank"}.
Follow the steps mentioned in [`Install Ruby in Linux`](#install-ruby-in-linux) section.

Although, if you can also install Ruby through `brew` as
```
brew install ruby
```

## NOTES

Check [Ruby installation documentation](https://www.ruby-lang.org/en/documentation/installation/){:target="_blank"}
page to see different ways to install Ruby for different platforms.


[//]: # List of references link
[rvm-link]: https://rvm.io/rvm/install
