class DeleteColumnPhoneNumber < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :phone_number
  end
end
