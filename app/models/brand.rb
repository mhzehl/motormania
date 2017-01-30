class Brand < ApplicationRecord
  has_many :motorcycles, dependent: :destroy
  mount_uploader :logo, ImageUploader

  validates_presence_of :name, :year_of_founding, :country_of_origin
end
