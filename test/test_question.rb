require "minitest/autorun"
require_relative "../question"

class QuestionTest < Minitest::Test

  #def test_hint_is_first_letter_of_answer
  #  q = Question.new("Vad heter huvudstaden i Norge?", "Oslo")
  #  assert_equal "O", q.hint
  #end
  
  #def test_hint_for_another_question
  #  q = Question.new("Vad heter huvudstaden i Sverige?", "Stockholm")
  #  assert_equal "S", q.hint
  #end

  def test_correct_ignores_case
    q = Question.new("Vad heter huvudstaden i Norge?", "Oslo")
    assert q.correct?("Oslo")
    refute q.correct?("Bergen")
  end
  
  def test_refuses_empty_prompt
    assert_raises(ArgumentError) { Question.new("", "Oslo") }
  end

  #def test_multiple_choices
  #  q = MultipleChoice.new("Vilken sal har vi programmering 2 i?", ["204","214","306","316","318"],"306")
  #  correct?("306")
  #end
end