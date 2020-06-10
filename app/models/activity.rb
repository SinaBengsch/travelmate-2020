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
  # acts_as_taggable_on :categories
  after_save :create_chat_room
  has_many :chat_rooms

  def create_chat_room
    @chat_room = ChatRoom.new(name: name)
    @chat_room.activity = self
    @chat_room.save
  end
end
