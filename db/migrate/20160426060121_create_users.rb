class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :petname

      t.timestamps null: false
    end
  end
end
