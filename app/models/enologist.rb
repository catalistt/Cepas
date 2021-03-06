class Enologist < ApplicationRecord
  has_many :positions
  has_many :magazines,  through: :positions
  has_many :scores
  has_many :wines,  through: :scores

  def to_s
    name
  end

  def work_in
    magazine_ids  
  end
end
