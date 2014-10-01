class LogHoursController < ApplicationController
  before_action :set_log_hour, only: [:show, :edit, :update, :destroy]

  # GET /log_hours
  # GET /log_hours.json
  def index
    @log_hours = LogHour.all
  end

  # GET /log_hours/1
  # GET /log_hours/1.json
  def show
  end

  # GET /log_hours/new
  def new
    @log_hour = LogHour.new
  end

  # GET /log_hours/1/edit
  def edit
  end

  # POST /log_hours
  # POST /log_hours.json
  def create
    @log_hour = LogHour.new(log_hour_params)

    respond_to do |format|
      if @log_hour.save
        format.html { redirect_to @log_hour, notice: 'Log hour was successfully created.' }
        format.json { render :show, status: :created, location: @log_hour }
      else
        format.html { render :new }
        format.json { render json: @log_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /log_hours/1
  # PATCH/PUT /log_hours/1.json
  def update
    respond_to do |format|
      if @log_hour.update(log_hour_params)
        format.html { redirect_to @log_hour, notice: 'Log hour was successfully updated.' }
        format.json { render :show, status: :ok, location: @log_hour }
      else
        format.html { render :edit }
        format.json { render json: @log_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /log_hours/1
  # DELETE /log_hours/1.json
  def destroy
    @log_hour.destroy
    respond_to do |format|
      format.html { redirect_to log_hours_url, notice: 'Log hour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log_hour
      @log_hour = LogHour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def log_hour_params
      params.require(:log_hour).permit(:hours).merge(user_id: current_user.id)
    end
end
