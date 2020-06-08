class Activity < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :destroy

  has_one_attached :photo
  validates :name, presence: true, length: { maximum: 30 }
  validates :description, presence: true
  validates :address, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  acts_as_taggable_on :categories
end
