class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         has_many :events
         has_many :event_attendances, foreign_key: :attendee
         has_many :attended_events, through: :event_attendances
          
    
end
