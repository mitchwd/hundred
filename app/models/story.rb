class Story < ActiveRecord::Base
  validates_length_of :content, :maximum => 100, :message => "must be less than 100 words", :tokenizer => lambda {|str| str.scan(/\w+/) }
  validates_presence_of :content, :message => "can't be blank"
end
