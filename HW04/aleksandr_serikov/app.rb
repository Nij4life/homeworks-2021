require 'pry'
require_relative 'lib/mentor'
require_relative 'lib/student'

puts
mentor = Mentor.new('John', 'Doe')
puts "create mentor: #{mentor.full_name}"
student = Student.new('Vasya', 'Pupkin')
puts "create student: #{student.full_name}"
puts

puts 'mentor subscribe student'
puts "mentor students before subscribe: #{mentor.students.size}"
mentor.subscribe(student)
puts "mentor students after subscribe: #{mentor.students.size}"
puts

puts "student homework size: #{student.homeworks.size}"
puts 'mentor add homework to student'
homework = mentor.add_homework('first', 'bla la la', student)
puts "student homework size: #{student.homeworks.size}"
puts "homework status: #{homework.status}"
puts

puts "mentor reject homework"
mentor.reject_work(homework)
puts "homework status: #{homework.status}"

puts 'END'
