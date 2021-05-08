require 'pry'
require_relative 'mentor'
require_relative 'student'

ilya = Mentor.new('Ilya', 'Zu')
vasya = Student.new('Vasya', 'Buka')

puts 'mentor subscribe student'
ilya.subscribe(vasya)

puts 'mentor add homework to student'
homework = ilya.add_homework('first', 'bla la la', vasya)
puts "homework #{homework}"
puts vasya.homeworks

puts 'END'
