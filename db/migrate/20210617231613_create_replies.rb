class CreateReplies < ActiveRecord::Migration[6.1]
  def change
    create_table :replies do |t|
      t.string :content
      # references: adds values to associate tables
      t.references :tweet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
