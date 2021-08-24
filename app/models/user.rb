class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         has_many :events
         has_many :event_attendances
         has_many :attended_events, through: :event_attendances, foreign_key: "event_id", source: :event
          
    
end
