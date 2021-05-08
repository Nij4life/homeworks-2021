# frozen_string_literal: true

# Homework
class Homework
  attr_reader :title, :description, :student

  def initialize(title, description, student)
    @title = title
    @description = description
    @student = student
    @status = 'to do'
  end

  def send_status(new_status)
    @status = new_status
  end
end
