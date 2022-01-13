class AddCompanyNameToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :company_name, :string
  end
end
