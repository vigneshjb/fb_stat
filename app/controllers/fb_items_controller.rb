class FbItemsController < ApplicationController
  before_action :set_fb_item, only: [:show]

  # GET /fb_items
  def index
    if (params[:items] == "posts")
      @fb_items = FbItem.posts(current_user.id)
    elsif (params[:items] == "photos")
      @fb_items = FbItem.photos(current_user.id)
    end
  end

  # GET /fb_items/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fb_item
      @fb_item = FbItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fb_item_params
      params.require(:fb_item).permit(:fb_id, :likes_count, :comments_count, :content, :fb_time, :user_id)
    end
end
