class AddNamesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column("users", "first_name", :string, limit: 25)
    add_column("users", "last_name", :string, limit: 25)
  end
end
