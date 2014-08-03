class Rule < ActiveRecord::Base
    # Item to grant access to
  belongs_to :resource, polymorphic: true
  # User or group that gets access
  belongs_to :permittee, polymorphic: true
end
