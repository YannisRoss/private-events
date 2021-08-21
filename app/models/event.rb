class Event < ApplicationRecord

    belongs_to :creator, class_name: "User"
    has_many :invitees, through: :event_invites, source: :invitee
    has_many :event_invites , foreign_key: :invited_event_id
    

end
