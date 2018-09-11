class AddPrivateToBlurbs < ActiveRecord::Migration[5.1]
  def change
  	add_column :blurbs, :private, :boolean, default: false
  end
end
