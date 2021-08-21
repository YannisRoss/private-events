class EventAttendance < ApplicationRecord


  belongs_to :attendee, class_name: "User"
  belongs_to :event_attendance, class_name: "Event"
   
end
