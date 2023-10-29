# frozen_string_literal: true

class Log < ApplicationRecord
  include ActiveModel::Serializers::JSON

  validates :user_id, presence: true
  validates :data, presence: true

  scope :by_user, ->(user_id) { where(user_id:) }
end
