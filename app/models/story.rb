class Story < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user # Also validates associated record existence
  validates_length_of :content, :maximum => 100, :message => "must be less than (or exactly) 100 words", :tokenizer => lambda {|str| str.squish.split.size}
  validates_presence_of :content, :message => "can't be blank"
  validates_uniqueness_of :content, :message => "has already been shared"
end
