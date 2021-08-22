class Event < ApplicationRecord

    belongs_to :user
    has_many :attendees, through: :event_attendances, source: :user
    has_many :event_attendances , foreign_key: :event_attendance_id
     

end
