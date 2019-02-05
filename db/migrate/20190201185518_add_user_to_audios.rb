class AddUserToAudios < ActiveRecord::Migration[5.2]
  def change
    add_reference :audios, :user, foreign_key: true
  end
end
