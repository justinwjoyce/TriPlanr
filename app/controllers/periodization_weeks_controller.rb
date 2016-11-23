class PeriodizationWeeksController < ApplicationController
  before_action :set_periodization_week, only: [:show, :edit, :update, :destroy]

  # GET /periodization_weeks
  # GET /periodization_weeks.json
  def index
    @periodization_weeks = PeriodizationWeek.all
  end

  # GET /periodization_weeks/1
  # GET /periodization_weeks/1.json
  def show
  end

  # GET /periodization_weeks/new
  def new
    @periodization_week = PeriodizationWeek.new
  end

  # GET /periodization_weeks/1/edit
  def edit
  end

  # POST /periodization_weeks
  # POST /periodization_weeks.json
  def create
    @periodization_week = PeriodizationWeek.new(periodization_week_params)

    respond_to do |format|
      if @periodization_week.save
        format.html { redirect_to @periodization_week, notice: 'Periodization week was successfully created.' }
        format.json { render :show, status: :created, location: @periodization_week }
      else
        format.html { render :new }
        format.json { render json: @periodization_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /periodization_weeks/1
  # PATCH/PUT /periodization_weeks/1.json
  def update
    respond_to do |format|
      if @periodization_week.update(periodization_week_params)
        format.html { redirect_to @periodization_week, notice: 'Periodization week was successfully updated.' }
        format.json { render :show, status: :ok, location: @periodization_week }
      else
        format.html { render :edit }
        format.json { render json: @periodization_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /periodization_weeks/1
  # DELETE /periodization_weeks/1.json
  def destroy
    @periodization_week.destroy
    respond_to do |format|
      format.html { redirect_to periodization_weeks_url, notice: 'Periodization week was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_periodization_week
      @periodization_week = PeriodizationWeek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def periodization_week_params
      params.require(:periodization_week).permit(:title, :type, :goal_ctl_bike, :goal_ctl_run, :goal_ctl_swim, :cycle_position, :periodization_cycle_id)
    end
end
