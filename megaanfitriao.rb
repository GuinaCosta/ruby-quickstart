#!/usr/bin/env ruby

# Class Mega Anfitrião
class MegaAnfitriao
  attr_accessor :names

  def initialize(names = 'jupiter')
    @names = names
  end

  def say_hello
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('each')
      @names.each do |name|
        puts "hello, mr #{name}"
      end
    else
      puts "hello, ms #{@names}"
    end
  end

  def say_goodbye
    if @names.nil?
      puts ',,,'
    elsif @names.respond_to?('join')
      puts "Bye, #{@names.join(', ')}. You're welcome!"
    else
      puts "Bye, #{@names}. You're welcome!"
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  msg = MegaAnfitriao.new
  msg.say_hello
  msg.say_goodbye

  msg.names = 'paulao'
  msg.say_goodbye
  msg.say_hello

  msg.names = %w[bia bea ca patty]
  msg.say_hello
  msg.say_goodbye
end
