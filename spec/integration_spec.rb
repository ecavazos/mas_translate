require 'minitest/spec'

lib = File.expand_path('../../lib', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'mas_translate'

MiniTest::Unit.autorun

describe MasTranslate do
  it "should work" do
    MasTranslate.run(nil)
  end
end
