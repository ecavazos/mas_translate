require 'uri'
require 'launchy'

# shut up your pinche mouth
phrase = Uri.escape 'Mas Puto!'
url    = "http://translate.google.com/#auto%7Ces%7C#{phrase}"

Launchy.open(url)
