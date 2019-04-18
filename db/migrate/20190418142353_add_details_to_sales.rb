class AddDetailsToSales < ActiveRecord::Migration
  def change
    change_table :sales do |t|
      t.string :name
      t.date :starts_on
      t.date :ends_on
      t.integer :percent_off
    end
  end
end
