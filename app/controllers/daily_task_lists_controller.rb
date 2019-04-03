class DailyTaskListsController < ApplicationController
  before_action :set_daily_task_list, only: %i[show edit update destroy]

  # GET /daily_task_lists
  # GET /daily_task_lists.json
  def index
    @daily_task_lists = DailyTaskList.all
  end

  # GET /daily_task_lists/1
  # GET /daily_task_lists/1.json
  def show; end

  # GET /daily_task_lists/new
  def new
    @daily_task_list = DailyTaskList.new
  end

  # GET /daily_task_lists/1/edit
  def edit; end

  # POST /daily_task_lists
  # POST /daily_task_lists.json
  def create
    @daily_task_list = DailyTaskList.new(daily_task_list_params)
    params[:daily_task_list][:task_id].each do |task_id|
      unless task_id.empty?
        task = Task.find(task_id)
        @daily_task_list.task << task
      end
    end

    respond_to do |format|
      if @daily_task_list.save
        format.html { redirect_to @daily_task_list, notice: 'Daily task list was successfully created.' }
        format.json { render :show, status: :created, location: @daily_task_list }
      else
        format.html { render :new }
        format.json { render json: @daily_task_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_task_lists/1
  # PATCH/PUT /daily_task_lists/1.json
  def update
    params[:daily_task_list][:task_id].each do |task_id|
      unless task_id.empty?
        task = Task.find(task_id)
        @daily_task_list.task << task
      end
    end

    respond_to do |format|
      if @daily_task_list.update(daily_task_list_params)
        format.html { redirect_to @daily_task_list, notice: 'Daily task list was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_task_list }
      else
        format.html { render :edit }
        format.json { render json: @daily_task_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_task_lists/1
  # DELETE /daily_task_lists/1.json
  def destroy
    @daily_task_list.destroy
    respond_to do |format|
      format.html { redirect_to daily_task_lists_url, notice: 'Daily task list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_daily_task_list
    @daily_task_list = DailyTaskList.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def daily_task_list_params
    params.require(:daily_task_list).permit(:title, :description, :completed, :user_id, :task_id)
  end
end
