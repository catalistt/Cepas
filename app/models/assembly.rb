class Assembly < ApplicationRecord
  belongs_to :wine
  belongs_to :strain

  def strain_name
    strain.name
  end

  def to_s
    name
  end

end
