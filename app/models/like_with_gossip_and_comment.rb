class LikeWithGossipAndComment < ApplicationRecord
    belongs_to :like 
    belongs_to :comment 
    belongs_to :gossip 
end
