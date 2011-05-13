require 'uri'
require 'yaml'
require 'launchy'
require File.expand_path '../lib/mas_translate', __FILE__

phrases = YAML::load_file('phrases.yml')

picker = MasTranslate::PhrasePicker.new(phrases)
phrase = URI.escape picker.pick
url    = "http://translate.google.com/#auto%7Ces%7C#{phrase}"

Launchy.open(url)
