require 'minitest/spec'
require File.expand_path('../../lib/mas_translate/phrase_picker', __FILE__)

MiniTest::Unit.autorun

describe MasTranslate::PhrasePicker do
  before do
    @phrases = ['foo', 'i like code', 'batman', 'poop']
    @picker = MasTranslate::PhrasePicker.new(@phrases)
  end

  describe '#pick' do
    it 'should get random phrase' do
      @phrases.must_include @picker.pick
    end

    it 'should not repeat a phrase' do
      phrases = []
      4.times { phrases << @picker.pick }
      phrases.uniq.size.must_equal 4
    end

    it 'should start shuffle over after all items have been used' do
      phrases = []
      8.times { phrases << @picker.pick }
      phrases.size.must_equal 8
    end
  end
end
