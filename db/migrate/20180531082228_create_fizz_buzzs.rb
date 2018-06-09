class CreateFizzBuzzs < ActiveRecord::Migration[5.1]
  def change
    create_table :fizz_buzzs do |t|
      t.integer :value
      t.string :fizzbuzz
      t.timestamps
    end
  end
end
