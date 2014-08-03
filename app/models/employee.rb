class Employee < ActiveRecord::Base
  belongs_to :business
  belongs_to :person
  
  def modules
    [:administration, :employees, :customers]
  end
end
