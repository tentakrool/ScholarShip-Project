class LineItem < ApplicationRecord
	belongs_to :Book
	belongs_to :Bookmark
	belongs_to :Notebook
	belongs_to :cart
end
