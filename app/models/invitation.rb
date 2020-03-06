class Invitation < ApplicationRecord
  scope :accepted, where(is_accepted: true)
  scope :pending, where(is_accepted: false)

  belongs_to :invitor, class_name: 'User', foreign_key: :sent_by
  belongs_to :event
  belongs_to :user, as: 'invited'
end
