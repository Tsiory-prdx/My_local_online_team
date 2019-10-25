class Gossip < ApplicationRecord
    belongs_to :user
    belongs_to :like
    has_many :gossip_x_tags
    has_many :comments
    has_many :tags, through: :gossip_x_tags
end
