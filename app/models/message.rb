class Message < ActiveRecord::Base
  belongs_to :resource, polymorphic: true
  belongs_to :author, foreign_key: 'posted_by', class_name: "Person"
    has_many :rules, as: :resource,  :dependent => :destroy

end
