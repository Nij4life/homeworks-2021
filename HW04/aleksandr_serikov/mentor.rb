# frozen_string_literal: true

require_relative 'person'

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

end
