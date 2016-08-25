class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :nausea
      t.integer :tickets
      t.integer :height
      t.integer :happiness
      t.boolean :admin, :default=>false
    end
  end
end
