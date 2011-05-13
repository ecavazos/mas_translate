module MasTranslate
  class PhrasePicker
    def initialize(phrases)
      @phrases = phrases
    end

    def pick(name = nil, options = {})
      @used ||= []
      @used.clear if @used.size == @phrases.size
      phrase = ''
      while phrase.empty? || @used.include?(phrase)
        phrase = @phrases.sample
      end

      @used << phrase

      if name && options[:suffix]
        phrase + ', ' + name
      elsif name
        name + ', ' + phrase
      else
        phrase
      end
    end


  end
end
