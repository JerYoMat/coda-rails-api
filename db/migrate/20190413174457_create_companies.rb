class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :companyname
      t.string :primarysymbol
      t.string :primaryexchange
      t.belongs_to :sector
      t.belongs_to :industry 
      t.timestamps
    end
    add_index :companies, :companyname, unique: true 
  end
end
