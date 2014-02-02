class Company < ActiveRecord::Base
  attr_accessible :title, :website
  has_many :departments

  validates :website, format: { with: %r{\A(http|https|svn(\+[^\s:\/\\]+)?|file):\/\/.+}i, on: :create }

end
