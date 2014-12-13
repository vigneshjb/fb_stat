class FbItemsController < ApplicationController
  before_action :set_fb_item, only: [:show, :edit, :update, :destroy]

  # GET /fb_items
  # GET /fb_items.json
  def index
    @fb_items = FbItem.all
  end

  # GET /fb_items/1
  # GET /fb_items/1.json
  def show
  end

  # GET /fb_items/new
  def new
    @fb_item = FbItem.new
  end

  # GET /fb_items/1/edit
  def edit
  end

  # POST /fb_items
  # POST /fb_items.json
  def create
    @fb_item = FbItem.new(fb_item_params)

    respond_to do |format|
      if @fb_item.save
        format.html { redirect_to @fb_item, notice: 'Fb item was successfully created.' }
        format.json { render :show, status: :created, location: @fb_item }
      else
        format.html { render :new }
        format.json { render json: @fb_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fb_items/1
  # PATCH/PUT /fb_items/1.json
  def update
    respond_to do |format|
      if @fb_item.update(fb_item_params)
        format.html { redirect_to @fb_item, notice: 'Fb item was successfully updated.' }
        format.json { render :show, status: :ok, location: @fb_item }
      else
        format.html { render :edit }
        format.json { render json: @fb_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fb_items/1
  # DELETE /fb_items/1.json
  def destroy
    @fb_item.destroy
    respond_to do |format|
      format.html { redirect_to fb_items_url, notice: 'Fb item was successfully destroyed.' }
      format.json { head :no_content }
    end
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
