---
title: "Syntax Highlighting"
---
## Disable Rouge

By default Jekyll uses Rouge as syntax highlighter. In some cases, you may want
to disable it.
To get Rouge disabled in Jekyll, just add the following in line(s) `_config.yml`.

Not using GitHub Pages:
```yaml
highlighter: none
```

Using GitHub Pages:
```yaml
markdown: kramdown
kramdown:
  syntax_highlighter_opts:
    disable : true
```

Source: <https://www.ronaldsvilcins.com/2018/02/05/disable-jekylls-default-syntax-highlighter-rouge/>
