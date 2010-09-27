class CreateSupportships < ActiveRecord::Migration
  def self.up
    create_table :supportships do |t|
      t.string :user_name
      t.string :supporter_name
      t.integer :frequency
      t.timestamps
    end
  end

  def self.down
    drop_table :supportships
  end
end
