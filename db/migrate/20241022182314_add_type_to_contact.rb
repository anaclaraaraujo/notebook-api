class AddTypeToContact < ActiveRecord::Migration[5.2]
  def change
    add_reference :contacts, :type, foreign_key: true
  end
end
