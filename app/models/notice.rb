class Notice < ApplicationRecord

  validates :name, presence: true, length: { maximum: 100 }
  validates :description, presence: true

  default_scope -> { order(created_at: :desc) }
end
