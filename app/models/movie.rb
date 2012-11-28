class Movie < ActiveRecord::Base
  attr_accessible :embed, :title, :description, :user_id
	attr_accessor :url

  validates_presence_of :title
  validates_presence_of :embed
  validates_presence_of :user_id

  belongs_to :user
end
