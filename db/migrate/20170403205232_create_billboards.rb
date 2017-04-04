class CreateBillboards < ActiveRecord::Migration
  def change
    create_table :billboards do |t|
      t.column :show_date, :datetime, :null => false
      t.column :premier, :boolean, :default => false
      t.column :sold_out, :boolean, :default => false
      t.column :price, :float, :null => false, :scale => 2

      t.timestamps null: false
    end
  end
end
