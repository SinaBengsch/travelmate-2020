class ActivityCategory < ApplicationRecord
  belongs_to :activity
  belongs_to :category
  accepts_nested_attributes_for :activity, :category
end
