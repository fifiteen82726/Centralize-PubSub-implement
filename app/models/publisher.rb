class Publisher < ApplicationRecord
  has_many :events, dependent: :destroy
end
