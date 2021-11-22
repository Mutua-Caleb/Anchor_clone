class Podcast < ApplicationRecord
  belongs_to :user
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :itunes
  validates_presence_of :stitcher
  validates_presence_of :podbay

  scope :newest_first, lambda {order("created_at DESC")}


  
end
