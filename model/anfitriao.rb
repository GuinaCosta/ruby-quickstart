# Class Anfitriao
class Anfitriao

  attr_accessor :name

  # @todo document this
  def initialize(name = 'marte')
    @name = name
  end

  def say_hello
    puts "Olá, #{@name}"
  end

  def say_goodbye
    puts "Bye, #{@name}. You're welcome!"
  end
end
