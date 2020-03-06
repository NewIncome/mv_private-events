class User < ApplicationRecord
  has_many :invitations
  has_many :events, through :invitations
  has_many :accepted_invitations -> { accepted }, through: :invitations
  has_many :pending_invitations -> { accepted }, through: :invitations
  has_many :pending_events, through: :pending_invitations, source: :event_id
  has_many :accepted_events, through: :accepted_invitations, source: :event_id
  has_many :created_events, foreign_key: :creator_id, class_name: :event
end
