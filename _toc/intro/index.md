---
title: Introduction
date: 15th April, 2020 12:00:00
tags:
 - jekyll
 - github
description: Introduction of Ruby Language
---

# Introduction

## Definition

### User Interaction

On the right side of any page, you'll notice links to edit the page, or
open an issue. This ensures that any time you have a question or want to
suggest or request a change, you can do so immediately and link directly
to the section of interest. The sections on the page also have permalinks so
you can link directly to them.

### Search

The entire site, including posts and documentation, is indexed and then available
for search at the top or side of the page. Give it a try! The content is rendered
into window data that is used by lunr.js to generate the search results.
If you want to exclude any file from search, add this to its front end matter:

```
---
layout: null
excluded_in_search: true
---
```

# History

If you include tags on a page, by default they will link to the [tags page]({{ site.url }}{{ site.baseurl }}/tags) on the site. However, if you define a `tag_search_endpoint` url in your configuration file, by clicking
the tag, the user will be taken to this page to search for it. As an example,
we define the current search endpoint to be Ask Cyberinfrastructure, and
page tags link to a search on it:

```yaml
tag_search_endpoint: https://ask.cyberinfrastructure.org/search?q=
tag_color: danger # danger, success, warning, primary, secondary, info
```

Note that you can also choose a color! The tags appear at the top of the page,
as they do on this page. The tags should be defined like this in the front end
matter:

```yaml
tags:
 - jekyll
 - github
```

They are appended to the first h1 block, so generally your pages should have a header.
If you comment out this variable, then each of your tags will link to it's appropriate
spot on the tags page linked above.

```yaml
#tag_search_endpoint: https://ask.cyberinfrastructure.org/search?q=
tag_color: primary # danger, success, warning, primary, info, secondary
```

### Search

The entire site, including posts and documentation, is indexed and then available
for search at the top or side of the page. Give it a try! The content is rendered
into window data that is used by lunr.js to generate the search results.
If you want to exclude any file from search, add this to its front end matter:

```
---
layout: null
excluded_in_search: true
---
```
