class RegistrationsController < ApplicationController
  load_and_authorize_resource
  # GET /employments
  
  def index
    @q = Registration.ransack(params[:q])
    @registrations = @q.result(distinct: true).page(params[:page])
  end

  # GET /registrations/1
  def show
    get_person
  end

  # GET /registrations/new
  def new
    get_person
    @registration= @person.registrations.build 
    @registration.build_responsible
    
    @cities = []
    @cities_address = []

  end

  # GET /registrations/1/edit
  def edit
  end

  # POST /registrations
  def create
    get_person
    @registration = @person.registrations.build(registration_params)  
    if @registration.save
      redirect_to @person, notice: 'Registration was successfully created.'      
    else
      render :new
    end
  end

  # PATCH/PUT /registrations/1
  def update
    if @registration.update(registration_params)
      redirect_to @registration.person, notice: 'Registration was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /registrations/1
  def destroy
    @registration.destroy
    redirect_to registrations_url, notice: 'Registration was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration
      @registration = Registration.find(params[:id])
    end

    def get_person
      unless @registration.nil? || params[:person_id]!= 0
        @person = Person.find(params[:person_id])
      else  
        @person = @registration.person
      end
      
      
    end 

    # Only allow a trusted parameter "white list" through.
    def registration_params
      params.require(:registration).permit(:registration_date, :value, :payment_day, :payment_type_id, :have_allergy,
        :use_medicine, :have_surgery, :health_problem,
        responsible_attributes: [
            :id, :name, :cpf, :birth_day, :sex, :phone_number, :_destroy
        ]
      )
    end
end

