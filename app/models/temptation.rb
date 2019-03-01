class Temptation < ApplicationRecord
  belongs_to :user, optional: true
  has_many :notification
  
end