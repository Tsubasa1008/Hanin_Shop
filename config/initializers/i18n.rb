#encoding: utf-8
I18n.config.available_locales = :"zh-TW", :"zh-CN", :en
I18n.default_locale = :"zh-TW"
I18n.load_path += Dir[Rails.root.join("config", "locales", "devise.*.{rb, yml}").to_s]

LANGUAGES = [
  ["繁體中文", "zh-TW"]
]