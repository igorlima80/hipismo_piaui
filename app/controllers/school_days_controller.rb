class SchoolDaysController < ApplicationController
  before_action :set_school_day, only: [:show, :edit, :update, :destroy]

  # GET /school_days
  def index
    @q = SchoolDay.ransack(params[:q])
    @school_days = @q.result(distinct: true).page(params[:page])
  end

  # GET /school_days/1
  def show
  end

  # GET /school_days/new
  def new
    @school_day = SchoolDay.new
  end

  # GET /school_days/1/edit
  def edit
  end

  # POST /school_days
  def create
    @school_day = SchoolDay.new(school_day_params)

    if @school_day.save
      redirect_to @school_day, notice: 'School day was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /school_days/1
  def update
    if @school_day.update(school_day_params)
      redirect_to @school_day, notice: 'School day was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /school_days/1
  def destroy
    @school_day.destroy
    redirect_to school_days_url, notice: 'School day was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_day
      @school_day = SchoolDay.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def school_day_params
      params.require(:school_day).permit(:name)
    end
end
