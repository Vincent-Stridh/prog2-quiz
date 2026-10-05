require_relative "question"

class MultipleChoice < Question
 
  attr_reader :alternatives
 
  def initialize(prompt, alternatives, answer)
    super(prompt, answer)
    raise ArgumentError unless alternatives.include?(answer)
    @alternatives = alternatives
  end
end