# frozen_string_literal: true

require_relative 'notification'
# Homework
class Homework
  attr_reader :title, :description, :mentor, :student, :status

  def initialize(title, description, mentor, student)
    @title = title
    @description = description
    @student = student
    @mentor = mentor
    @status = 'to do'
  end

  def change_status(new_status)
    @status = new_status.to_s
  end

  def to_work!
    self.mentor.add_notification(Notification.new(self, __method__.to_s))
    change_status(__method__)
  end

  def to_check!
    self.mentor.add_notification(Notification.new(self, __method__.to_s))
    change_status(__method__)
  end

  def add_answer!
    self.mentor.add_notification(Notification.new(self, __method__.to_s))
    change_status(__method__)
  end

  def reject_to_work!
    self.student.add_notification(Notification.new(self, __method__.to_s))
    change_status(__method__)
  end

  def accept!
    self.student.add_notification(Notification.new(self, __method__.to_s))
    change_status(__method__)
  end
end
