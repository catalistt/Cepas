class Enologist < ApplicationRecord
  has_many :positions
  has_many :magazines,  through: :positions
end
