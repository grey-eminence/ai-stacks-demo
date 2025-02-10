project = 'AI Stacks Demo'
copyright = '2025, Jacek Jankowski'
author = 'Jacek Jankowski'
release = '1.0.0'

extensions = ['myst_parser', 'sphinxcontrib.openapi']

templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

html_theme_options = {
   "navbar_start": ["navbar-logo"],
   "logo": {
      "image_light": "ai-logo.png",
      "image_dark": "ai-logo.png",
   },
   "secondary_sidebar_items": ["page-toc"],
   "show_prev_next": False,
   "footer_start": ["copyright"],
   "footer_end": [],
   "icon_links": [
        {
            "name": "GitHub",
            "url": "https://github.com/",
        }
   ]
}

html_theme = 'pydata_sphinx_theme'
html_static_path = ['_static']

html_css_files = [
    'css/custom.css',
]