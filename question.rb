class Question
  def initialize(prompt, answer)
    raise ArgumentError, "You cannot make new questions" if prompt == nil
    raise ArgumentError, "You cannot make new answers" if answer == nil
    raise ArgumentError, "Prompt cannot be empty" if prompt == ""
    raise NoMethodError, "Undefined method answer=" if answer ==
    @prompt = prompt
    @answer = answer
  end

  def prompt
    @prompt
  end

  #def answer
  #  @answer
  #end

  def hint
    "O"
  end

  def ask
    puts prompt
    gets.chomp
  end

  def correct?(reply)
    reply.strip.downcase == @answer.downcase
  end

  def to_s
    "#{prompt}"
  end
end
