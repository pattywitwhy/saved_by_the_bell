class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :temptation

  def text_time
    notification.time = temptation.time
  end

  def temptation_id
    temptation.id = current_user.id
  end

  def temptation_name
    notification.name = temptation.name
  end


end