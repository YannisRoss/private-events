class Event < ApplicationRecord

    belongs_to :user
    has_many :event_attendances 
    has_many :attendees, through: :event_attendances, foreign_key: "user_id", source: :user
     

end
