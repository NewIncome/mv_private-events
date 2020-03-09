class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :invitations, dependent: :destroy
  has_many :guests, -> { accepted }, through: :invitations, source: 'user_id'
  has_many :pending_guests, -> { pending }, class_name: 'Invitation'
  has_many :promoters, through: :invitations, source: 'invitor', class_name: 'User'
  # source: looks for a relationship in the called class.
end
