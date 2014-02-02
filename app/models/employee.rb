class Employee < ActiveRecord::Base
  attr_accessible :age, :email_id, :first_name, :last_name
  belongs_to :department
  validates :email_id, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :age, :numericality => {:only_integer => true}

  
  #model method - getter
  def name
    [first_name, last_name].join(' ')
  end

  # Setter
  def name=(name)
    split = name.split(' ', 2)
    self.first_name = split.first
    self.last_name = split.last
  end

end

