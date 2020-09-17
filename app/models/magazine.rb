class Magazine < ApplicationRecord
  has_many :positions
  has_many :enologists,  through: :positions

  def to_s
    name
  end
end
