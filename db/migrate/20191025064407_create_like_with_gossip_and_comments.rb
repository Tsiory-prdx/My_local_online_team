class CreateLikeWithGossipAndComments < ActiveRecord::Migration[6.0]
  def change
    create_table :like_with_gossip_and_comments do |t|
      t.timestamps
    end
  end
end
