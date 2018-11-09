class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :user_events
  has_many :events, through: :user_events

  def subscribe(event)
    UserEvent.create!(user: self, event: event)
  end
end
