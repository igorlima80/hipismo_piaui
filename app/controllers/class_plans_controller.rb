class ClassPlansController < ApplicationController
  before_action :set_class_plan, only: [:show, :edit, :update, :destroy]

  # GET /class_plans
  def index
    @q = ClassPlan.ransack(params[:q])
    @class_plans = @q.result(distinct: true).page(params[:page])
  end

  # GET /class_plans/1
  def show
  end

  # GET /class_plans/new
  def new
    @class_plan = ClassPlan.new
  end

  # GET /class_plans/1/edit
  def edit
  end

  # POST /class_plans
  def create
    @class_plan = ClassPlan.new(class_plan_params)

    if @class_plan.save
      redirect_to @class_plan, notice: 'Class plan was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /class_plans/1
  def update
    if @class_plan.update(class_plan_params)
      redirect_to @class_plan, notice: 'Class plan was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /class_plans/1
  def destroy
    @class_plan.destroy
    redirect_to class_plans_url, notice: 'Class plan was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_plan
      @class_plan = ClassPlan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def class_plan_params
      params.require(:class_plan).permit(:start_date,
      class_rooms_attributes: [
          :id, :school_day_id, :animal_id, :registration_id, :start_time, :end_time, :_destroy
        ])
        
    end
end
