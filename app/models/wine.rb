class Wine < ApplicationRecord
  has_many :assemblies
  has_many :strains,  through: :assemblies
  has_many :scores
  has_many :enologists, through: :scores

  accepts_nested_attributes_for :assemblies
  accepts_nested_attributes_for :scores
  accepts_nested_attributes_for :enologists

  def to_s
    name
  end

  def strains_detail
    detail = assemblies.map do |assembly|
      "#{assembly.strain_name} (#{assembly.percentage}%)"
    end
    detail.sort.join(", ")
  end
end