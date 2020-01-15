# Jekyll Base Template

Basic template to start any static website in [Jekyll](https://jekyllrb.com).

# How to reach at this point

- Create a jekyll project with its generator and `cd` into it
```
jekyll new sitename && cd sitename
```

- Create the top level folders
```
mkdir _include _layouts _sass assets
```

- Create `assets` subfolders
```
mkdir assets/css assets/fonts assets/img assets/js
```

- Create a basic `.gitignore` file
```
echo -e "_site\n.sass-cache\n.jekyll-metadata" > .gitignore
```

- Run as 
```
bundle exec jekyll serve
```

- Enjoyee!

