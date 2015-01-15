class Story < ActiveRecord::Base
  validates_length_of :content, :maximum => 100, :message => "must be less than (or exactly) 100 words", :tokenizer => lambda {|str| str.squish.split.size}
  validates_presence_of :content, :message => "can't be blank"
end
