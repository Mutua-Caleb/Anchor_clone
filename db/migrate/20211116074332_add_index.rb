class AddIndex < ActiveRecord::Migration[6.1]
  def change
    puts "** Adding an index **"
    add_index("podcasts", "user_id")
  end
end
