class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :invitations, dependent: :destroy
  has_many :guests, -> { accepted }, through: :invitations, source: 'user_id'
  has_many :pending_guests, -> { pending }, through: :invitations, source: 'user_id'
  has_many :promoters, through: :invitations, source: 'sent_by', class_name: 'User'
end
