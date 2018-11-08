class Event < ApplicationRecord
  serialize :subscriber_ids, Array

  belongs_to :publisher
end
