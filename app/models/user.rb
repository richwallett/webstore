# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
   attr_accessible :email, :password




   private

   def self.check_password(params)
     user = User.find_by_email(params[:email])
     user && user.password == params[:password]
   end
end
