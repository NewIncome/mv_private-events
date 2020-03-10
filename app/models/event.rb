class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :invitations, dependent: :destroy
  has_many :accepted_invitations, -> { accepted }, class_name: 'Invitation'
  has_many :pending_invitations, -> { pending }, class_name: 'Invitation'
  has_many :guests, through: :accepted_invitations, source: 'invited'
  has_many :pending_guests, through: :pending_invitation, source: 'invited'
  has_many :promoters, through: :invitations, source: 'invitor', class_name: 'User'
  # source: looks for a relationship in the called class.
end
