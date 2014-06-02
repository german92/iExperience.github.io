class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :handle
      t.string :profile_pic
      t.text :bio
      t.string :status

      t.timestamps
    end
  end
end
