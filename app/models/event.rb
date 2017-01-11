class Event < ApplicationRecord

  has_many :event_attachments, dependent: :destroy
  accepts_nested_attributes_for :event_attachments, reject_if: proc { |attributes| attributes['picture'].blank? }
  
  validates :name, presence: true, length: { maximum: 100 }
  validates :description, presence: true

  attr_accessor :virtual_attachments

  default_scope -> { order(created_at: :desc) }
end

