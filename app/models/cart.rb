class Cart < ApplicationRecord
	has_many :line_items, dependent: :destory #a cart has many line items
											  #existenece of line item depends on cart
end
