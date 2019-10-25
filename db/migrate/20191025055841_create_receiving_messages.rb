class CreateReceivingMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :receiving_messages do |t|

      t.timestamps
    end
  end
end
