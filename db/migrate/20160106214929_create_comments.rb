class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :subscriber_id
      t.integer :article_id
      t.text :feedback

      t.timestamps null: false
    end
  end
end
