class ShopController < ApplicationController
  def accessories
  	@ntbk=Notebook.all
  	@bkmk=Bookmark.all
  end

  def books
  	@thriller=Book.where(genre_id:1)
    @classic=Book.where(genre_id:2)
    @romance=Book.where(genre_id:3)
    @selfhelp=Book.where(genre_id:4)
    @autob=Book.where(genre_id:5)
  end

  def show
  	@book=Book.find(params[:id])
  end
end
