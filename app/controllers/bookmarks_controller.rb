class BookmarksController < ApplicationController
  def new
    # Find the list id from the params
    @list = List.find(params[:list_id])
    # Create a new and empty Bookmark
    @bookmark = Bookmark.new
  end

  def create
    # Find the list id from the params
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    @bookmark.save
    redirect_to list_path(@list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end
end
