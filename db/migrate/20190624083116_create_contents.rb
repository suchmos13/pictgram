class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.integer :user_id
      t.integer :topic_id
      t.string :comment
      

      t.timestamps
    end
  end
end
