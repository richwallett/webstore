# == Schema Information
#
# Table name: order_products
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrderProduct < ActiveRecord::Base
   attr_accessible :order_id, :product_id
   belongs_to :order
   belongs_to :product
end
