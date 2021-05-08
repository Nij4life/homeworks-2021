# frozen_string_literal: true

require_relative 'person'
require_relative 'homework'
require 'pry'
# The senpai class that teaches young Padawans
class Mentor < Person
  attr_reader :students

  def initialize(name, surname)
    super
    @students = []
  end

  def reject_work(homework)
  end

  def accept_work(homework)
  end

  def add_homework(f, t, student)
    if students.include?(student)
      new_homework = Homework.new(f, t, student)
      student.add_homework(new_homework)
      new_homework
    else
      raise 'You are not subscribed to this student'
    end
  end

  def subscribe(kohai)
    students << kohai
  end

  def unsubscribe(kohai)
    students.delete!(kohai)
  end
end
