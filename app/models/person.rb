class Person < ActiveRecord::Base
  belongs_to :address, class_name: "PostalAddress", foreign_key: "address_id"
  
  has_many :employees
  has_many :businesses, through: :employees
  
  has_many :accessrules, as: :permittee,  :dependent => :destroy, :class_name => "Rule"
  has_many :rules, as: :resource,  :dependent => :destroy
  
  def name
    "#{givenName} #{additionalName} #{familyName}"
  end
  
  def affiliated_with
    return self.businesses
  end
  
  # ---------------------
  # Authorization Methods
  # ---------------------
  # See if a user can do a specific action on a specific resource
  # Returns true or false
  # The resource must have an authorizable ruleset
  def can(action,resource)
    actions = [*action]
    actions << :all
    ruleset = resource.rules.where('permittee' => self, 'action' => actions)
      if ruleset.count > 0
        return true
      end
    return false
  end

  def cant(action, resource)
    return !can(action, resource)
  end
end
