class User < ApplicationRecord
  has_many :invitations
  has_many :attended_events, through: :invitations, source: :event
  has_many :upcoming_events, through: :attended_events, source: :date
  has_many :previously_events, -> { upcoming }, class_name: 'Invitation'

  has_many :accepted_invitations, -> { accepted }, class_name: 'Invitation'
  has_many :pending_invitations, -> { pending }, class_name: 'Invitation'
  has_many :created_invitations, foreign_key: :sent_by, class_name: 'Invitation'
  has_many :pending_events, through: :pending_invitations, source: :event
  has_many :accepted_events, through: :accepted_invitations, source: :event
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'

  has_secure_password
end
