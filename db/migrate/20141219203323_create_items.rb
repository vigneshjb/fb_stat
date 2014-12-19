class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :itemizable_id
      t.string :itemizable_type
      t.references :user, index: true
      t.string :enabled_features

      t.timestamps
    end
  end
end
