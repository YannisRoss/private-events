class Event < ApplicationRecord

    belongs_to :creator, class_name: "User"
   # has_many :invitees, class_name: "User", optional: true


end
