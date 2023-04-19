class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.text :body
      t.datetime :sent_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end