require 'pry'
require_relative 'mentor'
require_relative 'student'

mentor = Mentor.new('mentor', 'Zu')
student = Student.new('Vasya', 'Buka')

puts 'mentor subscribe student'
puts "mentor students before subscribe: #{mentor.students.size}"
mentor.subscribe(student)
puts "mentor students after subscribe: #{mentor.students.size}"
puts

puts "student homework size: #{student.homeworks.size}"
puts 'mentor add homework to student'
homework = mentor.add_homework('first', 'bla la la', student)
puts "student homework size: #{student.homeworks.size}"
puts

puts 'END'
