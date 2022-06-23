class Api::V1::Message < ApplicationRecord
    belongs_to :channel, optional: true

    has_many :message_replies
end
