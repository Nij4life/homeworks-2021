# frozen_string_literal: true
require_relative 'homework_rules'

# Homework
class Homework
  attr_reader :title, :description, :student, :status

  prepend HomeworkRules

  def initialize(title, description, student)
    @title = title
    @description = description
    @student = student
    @status = 'to do'
  end

  def send_status(new_status, person)
    @status = new_status
  end
end
