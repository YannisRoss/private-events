class EventAttendance < ApplicationRecord

  validates :user, uniqueness: { scope: :event , message: " already attending. You can't attend the same event twice!" }
    

  
  belongs_to :user
  belongs_to :event
    
end
