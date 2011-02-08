class CreateHounds < ActiveRecord::Migration
  def self.up
    create_table :hounds do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end

  def self.down
    drop_table :hounds
  end
end
