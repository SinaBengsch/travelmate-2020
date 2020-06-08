class Activity < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true, length: { maximum: 30 }
  validates :description, presence: true
  validates :address, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
