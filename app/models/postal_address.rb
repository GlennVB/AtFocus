class PostalAddress < ActiveRecord::Base
   has_many :inhabitants, class_name: "Person", foreign_key: "address_id"
   # belongs_to :country, class_name: "Country", foreign_key: :addressCountry_id
end
