require "minitest/autorun"
require_relative "../multiple_choice"


class MultipleChoiceTest < Minitest::Test
  def test_creates_successfully
    q = MultipleChoice.new("Vad heter Norges huvudstad?", ["Stockholm", "Köpenhamn", "Oslo"], "Oslo")
    assert_equal("Vad heter Norges huvudstad?", q.prompt)
    assert_equal(["Stockholm", "Köpenhamn", "Oslo"], q.alternatives)
    print q.alternatives, " "
    assert_equal("Oslo", q.answer)
    if q.correct?("Oslo")
      print "Oslo är korrekt"
    end
  end

    def test_raises_if_answer_not_in_alternatives
      assert_raises(ArgumentError) { MultipleChoice.new("Fråga", ["A", "B", "C"], "S") }
    end


end
