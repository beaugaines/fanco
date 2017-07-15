class CreateRewardTiers < ActiveRecord::Migration[5.1]
  def change
    create_table :reward_tiers do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title, null: false
      t.string :blurb, null: false
      t.float :price, null: false
      t.integer :chosen_tally, default: 0

      t.timestamps
    end
  end
end
