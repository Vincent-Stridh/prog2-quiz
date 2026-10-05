class Question

  attr_reader :prompt, :answer

  def initialize(prompt, answer)
    raise ArgumentError, "You cannot make new questions" if prompt == nil
    raise ArgumentError, "You cannot make new answers" if answer == nil
    raise ArgumentError, "Prompt cannot be empty" if prompt == ""
    @prompt = prompt
    @answer = answer
  end

  def hint
    @hint
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
