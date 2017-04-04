class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.column :name, :string, :null => false
      t.column :description, :text, :null => false
      t.column :location, :string, :null => false
      t.column :picture_url, :string, :null => false

      t.timestamps null: false
    end

    change_table :billboards do |t|
      t.belongs_to :event, index: true
    end
  end
end
