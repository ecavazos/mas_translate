require 'minitest/spec'

MiniTest::Unit.autorun

class Poop; end

describe Poop do
  it "foo" do
    1.must_equal 1
  end
end
