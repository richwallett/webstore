# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  attr_accessible :user_id, :product_id
  belongs_to :user
  has_many :order_products
  has_many :products, :through => :order_products
end
