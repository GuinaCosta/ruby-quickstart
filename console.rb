#!/usr/bin/env ruby

# frozen_string_literal: true

lottery_ticket = [12, 1, 13, 44, 50, 60]
puts lottery_ticket
puts 1 + 10
puts Math.sqrt(10.30)
a = 3**2
b = 4**2
puts Math.sqrt(a + b)

def hello
  puts 'Ola, mundo!'
end

hello

def hello_name(name)
  puts "Olá, #{name}"
end

hello_name 'Guina'
hello_name('Luizio')

def hello_name_formatted(name = 'planeta')
  puts "Olá, #{name.capitalize}"
end

hello_name_formatted('bizina')
hello_name_formatted

require_relative 'model/anfitriao'

person = Anfitriao.new('john snow')
person.say_hello
person.say_goodbye

puts person.respond_to?('name')
puts person.respond_to?('name=')
puts person.respond_to?('say_goodbye')

person.name = 'lupin'
person.say_hello

puts Anfitriao.instance_methods
puts Anfitriao.instance_methods(false)
