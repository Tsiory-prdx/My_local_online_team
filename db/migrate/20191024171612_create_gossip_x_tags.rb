class CreateGossipXTags < ActiveRecord::Migration[6.0]
  def change
    create_table :gossip_x_tags do |t|
      t.timestamps
    end
  end
end
