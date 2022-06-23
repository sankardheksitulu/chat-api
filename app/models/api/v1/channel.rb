class Api::V1::Channel < ApplicationRecord
    has_many :messages, dependent: :destroy
    has_many :channel_members, dependent: :destroy

    accepts_nested_attributes_for :channel_members
end
