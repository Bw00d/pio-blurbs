class AddAttributesToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :agency, :string
  	add_column :users, :host, :string
  	add_column :users, :qualification, :string
  	add_column :users, :phone, :string
  	add_column :users, :city, :string
  	add_column :users, :state, :string
  	add_column :users, :summary, :text
  	add_column :users, :status, :integer
  	add_column :users, :trainee, :boolean
  end
end
