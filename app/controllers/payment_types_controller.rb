class PaymentTypesController < ApplicationController
  load_and_authorize_resource

  # GET /payment_types
  def index
    @q = PaymentType.ransack(params[:q])
    @payment_types = @q.result(distinct: true).page(params[:page])
  end

  # GET /payment_types/1
  def show
  end

  # GET /payment_types/new
  def new
    @payment_type = PaymentType.new
  end

  # GET /payment_types/1/edit
  def edit
  end

  # POST /payment_types
  def create
    @payment_type = PaymentType.new(payment_type_params)

    if @payment_type.save
      redirect_to @payment_type, notice: 'Payment type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /payment_types/1
  def update
    if @payment_type.update(payment_type_params)
      redirect_to @payment_type, notice: 'Payment type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /payment_types/1
  def destroy
    @payment_type.destroy
    redirect_to payment_types_url, notice: 'Payment type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_type
      @payment_type = PaymentType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def payment_type_params
      params.require(:payment_type).permit(:name)
    end
end
