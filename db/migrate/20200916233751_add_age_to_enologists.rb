class AddAgeToEnologists < ActiveRecord::Migration[5.2]
  def change
    add_column :enologists, :age, :int
  end
end
