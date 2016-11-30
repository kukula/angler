class Catch < ApplicationRecord
  validates :angler_name, presence: true

  has_attached_file :photo, styles: { medium: "140x140>" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
