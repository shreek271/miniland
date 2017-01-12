class Faculty < ApplicationRecord

  validates :name, presence: true
  validates :qualification, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  validates :gender, presence: true
  validates :qualification, presence: true

  has_attached_file :picture, styles: { large: "600x600>", medium: "150x150>", thumb: "50x50>" }
  validates_attachment :picture, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
