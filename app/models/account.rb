class Account < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def profile
    Person.where(email: self.email).first
  end
  
  def name
    if profile != nil
      profile.name
    end
  end
end
