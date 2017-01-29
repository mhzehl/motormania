class Motorcycle < ApplicationRecord
  belongs_to :brand

  validates_presence_of :type, :category, :production_since
end
