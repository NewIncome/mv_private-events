class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :invitations, dependent: :destroy
  has_many :attendees, through: :invitations, source: 'invitee'
  scope :upcoming, -> { where('date > ?', Time.now) }
  scope :previous, -> { where('date < ?', Time.now) }

  has_one_attached :image
end
