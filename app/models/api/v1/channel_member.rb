class Api::V1::ChannelMember < ApplicationRecord
    belongs_to :channel, optional: true
end
