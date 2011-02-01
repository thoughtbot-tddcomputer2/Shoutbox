class Shout <ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :body
  
  has_many :comments
end