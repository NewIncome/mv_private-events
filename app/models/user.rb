class User < ApplicationRecord
  has_many :invitations
  has_many :attended_events, through: :invitations, source: :event
  has_many :created_invitations, foreign_key: :sent_by, class_name: 'Invitation'
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'

  has_secure_password
end
