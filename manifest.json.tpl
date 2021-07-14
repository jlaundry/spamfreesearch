{
  "manifest_version": 2,
  "name": "Spam-free search",
  "description": "Search without spammy \"archive\" links",
  "homepage_url": "https://github.com/jlaundry/spamfreesearch",
  "version": "{version}",
  "browser_specific_settings": {
    "gecko": {
      "id": "{b661c7b7-9e80-4d72-8b0a-fd4527305d6b}",
      "strict_min_version": "65.0"
    }
  },
  "chrome_settings_overrides": {
    "search_provider": {
      "name": "Spam-free search",
      "search_url": "https://www.google.com/search?client=firefox-b-d&q={searchTerms}{exclusions}",
      "keyword": "nospam",
      "is_default": true,
      "encoding": "UTF-8"
    }
  }
}
