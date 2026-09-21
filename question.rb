class Question
  def initialize(prompt, answer)
    raise ArgumentError, "You cannot make new questions" unless prompt == nil
    raise ArgumentError, "You cannot make new answers" unless answer == nil
    @prompt = prompt
    @answer = answer
  end

  def prompt
    @prompt
  end

  def answer
    @answer
  end

  def ask
    puts prompt
    gets.chomp
  end

  def correct?(reply)
    reply.strip.downcase == answer.downcase
  end

  def to_s
    "#{prompt} (#{answer})"
  end
end
