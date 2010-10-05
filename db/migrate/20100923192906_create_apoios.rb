class CreateApoios < ActiveRecord::Migration
  def self.up
    create_table :apoios do |t|
      t.string :nome_usuario
      t.string :nome_apoiador
      t.integer :frequencia
      t.timestamps
    end
  end

  def self.down
    drop_table :apoios
  end
end
