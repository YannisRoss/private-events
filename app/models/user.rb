class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         has_many :events
         has_many :event_invites, foreign_key: :invitee_id
         has_many :invited_events, through: :event_invites
         
    
end
