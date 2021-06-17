class AddDefaultValueToColumn < ActiveRecord::Migration[6.1]
  def change
    change_column_default :tweets, :author, "N/A"
  end
end
