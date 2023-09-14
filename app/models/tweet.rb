class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :twitter_account

  validates :body, presence: true, length: {minimum:1, maximum:200}
  validates :publish_at, presence: true

  after_initialize do
    
  end
end
