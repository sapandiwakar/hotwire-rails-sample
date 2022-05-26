class Tweet < ApplicationRecord
  after_create_commit :stream

  private

  def stream
    broadcast_prepend_later_to(:tweets)
  end
end
