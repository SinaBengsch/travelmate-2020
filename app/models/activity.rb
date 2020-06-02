class Activity < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { maximum: 30 }
  validates :description, presence: true, length: { maximum: 850 }
  validates :address, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
