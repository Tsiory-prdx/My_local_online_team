class CreateSendingMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :sending_messages do |t|

      t.timestamps
    end
  end
end
