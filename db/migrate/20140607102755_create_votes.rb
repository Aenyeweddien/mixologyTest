class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :voter_id
      t.integer :drink_id
      t.integer :vote_value
      t.text :comment

      t.timestamps
    end
  end
end
