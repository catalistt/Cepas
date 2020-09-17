class Position < ApplicationRecord
  belongs_to :enologist
  belongs_to :magazine

  def to_s
    name
  end
end
