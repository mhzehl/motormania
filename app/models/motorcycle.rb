class Motorcycle < ApplicationRecord
  belongs_to :brand
  mount_uploader :photo, ImageUploader

  validates_presence_of :type, :category, :production_since
end
