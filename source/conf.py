# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'Electronic Journey'
copyright = '2024, Electronic Journey'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = []

templates_path = ['_templates']
exclude_patterns = []



# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'sphinx_book_theme'
html_static_path = ['_static']
html_title = "Electronic Journeys"
html_logo = "./_images/ElectronicJourneyLogo.jpeg"

html_theme_options = {
    "repository_url": "https://github.com/Killerkarebearz/Electronic-Journey",
    "use_repository_button": True,    
    "icon_links": [
        {
            "name": "GitHub",
            "url": "https://github.com/Killerkarebearz/Electronic-Journey",
            "icon": "fa-brands fa-github",
        },
        {
            "name": "Youtube",
            "url": "https://www.youtube.com/@Electronic-Journeys",
            "icon": "fa-brands fa-youtube",
        }
    ]
}