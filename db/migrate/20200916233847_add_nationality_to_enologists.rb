class AddNationalityToEnologists < ActiveRecord::Migration[5.2]
  def change
    add_column :enologists, :nationality, :string
  end
end
