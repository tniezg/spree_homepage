class CreateHomePageFieldTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_home_page_field_types do |t|
      t.string :name, null: false
      t.string :field_type, null: false
      t.timestamps
    end
  end
end
