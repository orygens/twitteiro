class CreateSupportships < ActiveRecord::Migration
  def self.up
    create_table :supportships do |t|
      t.integer :user_id
      t.integer :supporter_id
      t.string :frequency

      t.timestamps
    end
  end

  def self.down
    drop_table :supportships
  end
end
