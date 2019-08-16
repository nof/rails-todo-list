class Task < ApplicationRecord
  scope :default_order, -> { order(:id) }
  scope :finished, -> { where(finished: true) }
  scope :unfinished, -> { where(finished: false) }

  def finish!
    update!(finished: true)
  end

  def unfinish!
    update!(finished: false)
  end
end
