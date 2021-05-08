# frozen_string_literal: true

require_relative 'person'
require 'pry'
# Student
class Student < Person
  attr_reader :mentor, :homeworks

  def initialize(*params)
    super(*params)
    @homeworks = []
  end

  def subscribed(senpai)
    @mentor |= senpai
  end

  def unsubscribed
    @mentor = nil
  end

  def add_homework(homework)
    homeworks << homework
  end
end
