# Rules for Homework
require 'pry'
# asd
module HomeworkRules
  MENTOR = 'Mentor'.freeze
  STUDENT = 'Student'.freeze

  def send_status(*params)
    access?(*params)
    super(*params)
  end

  def access?(new_status, person)
    case person.class.name
    when MENTOR
      new_status[/rejected|accept/i]
    when STUDENT
      new_status[/working|check/i]
    else
      raise 'You send unsupported class'
    end
  end
end
