require "minitest/autorun"
require_relative "../question"

class QuestionTest < Minitest::Test
  def test_hint_is_first_letter_of_answer
    q = Question.new("Vad heter huvudstaden i Norge?", "Oslo")
    assert_equal "O", q.hint
    q = Question.new("Vad heter huvudstaden i Sverige?", "Stockholm")
    assert_equal "S", q.hint
  end
  
end