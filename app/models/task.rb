class Task < ApplicationRecord
  scope :default_order, -> { order(:id) }
  scope :finished, -> { where(finished: true) }
  scope :unfinished, -> { where(finished: false) }
end
