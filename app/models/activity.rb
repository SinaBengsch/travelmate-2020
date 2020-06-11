class Activity < ApplicationRecord
  belongs_to :user
  has_many :activity_categories, dependent: :destroy
  has_many :categories, through: :activity_categories
  has_many :bookmarks, dependent: :destroy
  has_one_attached :photo
  geocoded_by :address

  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true, length: { maximum: 30 }
  validates :description, presence: true
  validates :address, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  has_one :chatroom

  def has_bookmark?(user)
    self.bookmarks.where(user: user).present?
  end

  def fetch_bookmark(user)
    self.bookmarks.where(user: user).first
  end
end
