require 'uri'
class Company < ActiveRecord::Base
  attr_accessible :title, :website
  has_many :departments

  validates_format_of :website, :with => URI.regexp
end
