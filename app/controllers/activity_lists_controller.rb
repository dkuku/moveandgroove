class ActivityListsController < ApplicationController
  before_action :set_activity_list, only: [:show, :edit, :update, :destroy]

  # GET /activity_lists
  # GET /activity_lists.json
  def index
    @activity_lists = ActivityList.all
  end

  # GET /activity_lists/1
  # GET /activity_lists/1.json
  def show
  end

  # GET /activity_lists/new
  def new
    @activity_list = ActivityList.new
  end

  # GET /activity_lists/1/edit
  def edit
  end

  # POST /activity_lists
  # POST /activity_lists.json
  def create
    @activity_list = ActivityList.new(activity_list_params)

    respond_to do |format|
      if @activity_list.save & current_user.admin?
        format.html { redirect_to @activity_list, notice: 'Activity list was successfully created.' }
        format.json { render :show, status: :created, location: @activity_list }
      else
        format.html { render :new }
        format.json { render json: @activity_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_lists/1
  # PATCH/PUT /activity_lists/1.json
  def update
    respond_to do |format|
      if @activity_list.update(activity_list_params) & current_user.admin?
        format.html { redirect_to @activity_list, notice: 'Activity list was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_list }
      else
        format.html { render :edit }
        format.json { render json: @activity_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_lists/1
  # DELETE /activity_lists/1.json
  def destroy
    @activity_list.destroy
    respond_to do |format|
      format.html { redirect_to activity_lists_url, notice: 'Activity list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_list
      @activity_list = ActivityList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_list_params
      params.require(:activity_list).permit(:name, :theme, :main_image, :thumb_image)
    end
end
