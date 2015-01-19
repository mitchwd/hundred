class Story < ActiveRecord::Base
  require 'obscenity/active_model'

  belongs_to :user

  validates_presence_of :user # Also validates associated record existence
  validates :content, 
    presence: true,
    obscenity: { sanitize: true },
    uniqueness: { message: "has already been shared" },
    word_count: { min: 100, max: 100, message: "must be exactly 100 words. (Currently %{actual_count}/100)" }
end
