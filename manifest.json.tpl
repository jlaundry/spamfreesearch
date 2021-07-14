{
  "manifest_version": 2,
  "name": "Spam-free search",
  "description": "Search without spammy \"archive\" links",
  "version": "1.0",
  "browser_specific_settings": {
    "gecko": {
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