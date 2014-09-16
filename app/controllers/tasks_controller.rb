class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :complete]
  before_action :authenticate_user!
  before_action :validate_user, only: [:show]
  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.where(user_id: current_user.id)
    
    @open_tasks = current_user.tasks.where(open: 1, hours_to_complete: nil)
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @tasks = Task.all
  end

  # GET /tasks/new
  def new
    @task = Task.new
    @users = User.all
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    @task.assigned_by = current_user.username
    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
        format.js { render js: "alert('Updated');" }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  #custom route
  def complete
    @task = Task.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    #ensure user can only view their specific tasks
    def validate_user
      if current_user.id == Task.find(params[:id]).user_id
        #valid user, display the page! 
      else
        flash[:error] = "You must login to continue"
        redirect_to(root_path)
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:title, :description, :hours, :due_date, :user_id, :open, :assigned_by,
        :hours_to_complete)
    end
end
