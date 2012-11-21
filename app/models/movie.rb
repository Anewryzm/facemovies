class Movie < ActiveRecord::Base
  attr_accessible :embed, :title

  validates_presence_of :title
  validates_presence_of :embed
end
