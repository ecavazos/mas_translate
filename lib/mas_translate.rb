require 'uri'
require 'yaml'
require 'launchy'
require 'mas_translate/phrase_picker'

module MasTranslate
  class << self
    def run(argv)
      phrases = YAML::load_file('phrases.yml')
      picker = MasTranslate::PhrasePicker.new(phrases)
      phrase = URI.escape picker.pick
      url    = "http://translate.google.com/#auto%7Ces%7C#{phrase}"

      Launchy.open(url)
    end
  end
end

