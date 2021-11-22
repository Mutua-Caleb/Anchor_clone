class CreatePodcasts < ActiveRecord::Migration[6.1]
  def change
    create_table :podcasts do |t|
      t.string :title
      t.string :description
      t.string :itunes
      t.string :stitcher
      t.string :podbay

      t.timestamps
    end
   
  end
end
