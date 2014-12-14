class FbItemsController < ApplicationController
  before_action :set_fb_item, only: [:show]

  # GET /fb_items
  def index
    @fb_items = FbItem.all
  end

  # GET /fb_items/1
  def show
    @fb_items = current_user.fb_items
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
