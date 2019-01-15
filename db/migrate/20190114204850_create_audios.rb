class CreateAudios < ActiveRecord::Migration[5.2]
  def change
    create_table :audios do |t|
      t.string :title
      t.string :artist

      t.timestamps
    end
  end
end
