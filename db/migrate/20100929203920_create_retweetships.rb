class CreateRetweetships < ActiveRecord::Migration
  def self.up
    create_table :retweetships do |t|
      t.string :user_name
      t.string :retweeter_name
      t.integer :frequency
      t.timestamps

      t.timestamps
    end
  end

  def self.down
    drop_table :retweetships
  end
end
