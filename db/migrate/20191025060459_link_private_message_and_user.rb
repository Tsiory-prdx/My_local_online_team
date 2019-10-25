class LinkPrivateMessageAndUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :receiving_messages, :user ,foreign_key: true
    add_reference :receiving_messages, :private_message ,foreign_key: true
    add_reference :sending_messages, :user ,foreign_key: true
    add_reference :sending_messages, :private_message ,foreign_key: true
  end
end
