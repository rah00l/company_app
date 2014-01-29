class Department < ActiveRecord::Base
  attr_accessible :description, :title
  belongs_to :company
  has_many :employees

  validates :description, :length => { :within => 1..1000 }
end
