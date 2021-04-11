class ClassRoomsController < ApplicationController
  before_action :set_class_room, only: [:show, :edit, :update, :destroy]

  # GET /class_rooms
  def index
    @class_rooms = ClassRoom.all
  end

  # GET /class_rooms/1
  def show
  end

  # GET /class_rooms/new
  def new
    @class_room = ClassRoom.new
  end

  # GET /class_rooms/1/edit
  def edit
  end

  # POST /class_rooms
  def create
    @class_room = ClassRoom.new(class_room_params)

    if @class_room.save
      redirect_to @class_room, notice: 'Class room was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /class_rooms/1
  def update
    if @class_room.update(class_room_params)
      redirect_to @class_room, notice: 'Class room was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /class_rooms/1
  def destroy
    @class_room.destroy
    redirect_to class_rooms_url, notice: 'Class room was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_room
      @class_room = ClassRoom.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def class_room_params
      params.require(:class_room).permit(:start_time, :end_time, :class_plan_id, :school_day_id, :registration_id, :animal_id)
    end
end
