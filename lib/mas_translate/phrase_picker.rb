module MasTranslate
  class PhrasePicker
    def initialize(phrases)
      @phrases = phrases
    end

    def pick
      @used ||= []
      @used.clear if @used.size == @phrases.size
      phrase = ''
      while phrase.empty? || @used.include?(phrase)
        phrase = @phrases.sample
      end
      @used << phrase
      phrase
    end
  end
end
