class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :goals
  has_many :temptations

  def daily_savings
    sum = 0
    all_temptations = temptations
    all_temptations.each do |temptation|
      sum += temptation['cost']
    end
    sum
  end
end
