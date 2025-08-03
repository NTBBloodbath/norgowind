# Norgowind

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)
![Version](https://img.shields.io/badge/version-0.4.1-blue)

A modern, responsive theme for the [Norgolith SSG](https://github.com/NTBBloodbath/norgolith), built with TailwindCSS. Norgowind provides a clean, customizable look for your Norgolith-powered site, with extra features and easy configuration.

---

## Features
- Beautiful, responsive minimal design powered by TailwindCSS
- Ready-to-use templates for posts, categories, home, and more
- Customizable navigation and footer links
- Built-in icons support thanks to tabler icons library
- Mermaid.js support for diagrams and charts
- Additional blockquote styles (tip, note, important, warning, error)
- Truncation options for post cards

## Demo
See Norgowind in action:
- [amartin.beer](https://amartin.beer)
- [Official Norgolith documentation](https://norgolith.amartin.beer)

### Showcase

<details>
  <summary>Home page</summary>

  <img width="1904" height="1212" alt="image" src="https://github.com/user-attachments/assets/c66ac751-cb0a-4cd5-bc8c-bf10b6414997" />

</details>

<details>
  <summary>Post view</summary>

  <img width="1904" height="1064" alt="image" src="https://github.com/user-attachments/assets/77a47b5c-b9d3-409e-a022-5493f049b968" />

</details>

## Requirements
- [Norgolith](https://github.com/NTBBloodbath/norgolith) (latest commit on `master` branch required)
- [TailwindCSS CLI](https://tailwindcss.com/docs/installation) (for development or custom styling)

## Installation
```bash
lith theme pull github:NTBBloodbath/norgowind
```

> [!IMPORTANT]
>
> Norgowind requires the latest Norgolith commit in the master branch in order to work.

## Usage
After installing, configure your site as described below. If you plan to modify the CSS, see the [Tailwind Reloading](#tailwind-reloading) section.

### Configuration
Add the following fields to your `norgolith.toml`:

```toml
[extra]
license = "GPLv2" # Optional
favicon_path = "/assets/norgolith.svg" # Fallback to default favicon
footer_author_link = "https://github.com/NTBBloodbath" # Optional
enable_mermaid = true # Enable Mermaid.js for diagrams

[extra.nav]
# Link_name = "url"
# blog = "/posts"
# GitHub = "https://github.com/NTBBloodbath/norgolith"

[extra.footer]
# Link_name = "url"
# GitHub = "https://github.com/NTBBloodbath/norgolith"
```

### Templates
Norgowind provides these templates:
```
templates
├── partials
│   ├── footer.html  <- Footer content
│   └── nav.html     <- Header navbar
├── base.html        <- Main template (extends others)
├── categories.html  <- Categories list
├── category.html    <- Category posts list
├── default.html     <- Default template for all content
├── home.html        <- Homepage
├── post.html        <- Blog post
└── posts.html       <- Posts list
```

To use a template, set the `layout` metadata in your content files. For example, in a blog post:
```norg
layout: post
```

> [!TIP]
>
> Norgolith expects your blog posts in the `content/posts` directory.

### MermaidJS Support
Norgowind comes with opt-in support for MermaidJS flowcharts. You can use mermaid charts through embedded HTML in your norg content if you set the `enable_mermaid` option to `true` in the `extra` table of your configuration file:
```org
@embed html
<pre class="mermaid">
  flowchart LR
  A[HTML Fragment] --> B[Tera Engine]
  C[Validated Metadata] --> B
  D[Site Config] --> B
  E[Post Collection] --> B
  B --> F[Layout Template]
  F --> G[Final HTML]
</pre>
@end
```

### Additional Styling
Norgowind adds extra blockquote classes (use with `+html.class` tags):
- `tip` (green)
- `note` (blue)
- `important` (violet)
- `warning` (yellow)
- `error` (red)

![blockquotes.png](https://github.com/user-attachments/assets/d45e2e97-5e3b-43cb-8077-a16f737259b9)

### Additional Metadata Fields
- `truncate`: Set the truncate character length for recent post cards.
- `truncate_char`: Set the truncate character (default is ellipsis). Leave empty to disable.

### Tailwind Reloading
By default, Tailwind's configuration in Norgowind watches content files and templates. Each new class added to content using a `+html.class` tag will be included in the styling file.

For site development, install the TailwindCSS CLI and run:
```sh
tailwindcss -i theme/assets/css/tailwind.css -o theme/assets/css/styles.min.css --minify --watch
```

## Contributing
Contributions, issues, and feature requests are welcome! Feel free to open an issue or pull request.

## License
Norgowind is licensed under the MIT License.
