class Event < ApplicationRecord
  serialize :subscriber_ids, Array

  belongs_to :user
  has_many :user_events, dependent: :destroy
  has_many :users, through: :user_events
end
