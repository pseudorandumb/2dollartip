class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :url
      t.integer :duration

      t.timestamps
    end
  end
end
