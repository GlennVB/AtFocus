class Business < ActiveRecord::Base
  has_many :employees
  has_many :people, through: :employees
  has_one :businessDash
  has_many :messages, as: :resource,  :dependent => :destroy
  has_many :rules, as: :resource,  :dependent => :destroy

end
