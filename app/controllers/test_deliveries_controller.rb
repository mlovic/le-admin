class TestDeliveriesController < ApplicationController
  before_action :set_test_delivery, only: [:show, :edit, :update, :destroy]

  # GET /test_deliveries
  # GET /test_deliveries.json
  def index
    @test_deliveries = TestDelivery.all
  end

  # GET /test_deliveries/1
  # GET /test_deliveries/1.json
  def show
  end

  # GET /test_deliveries/new
  def new
    @test_delivery = TestDelivery.new
  end

  # GET /test_deliveries/1/edit
  def edit
  end

  # POST /test_deliveries
  # POST /test_deliveries.json
  def create
    @test_delivery = TestDelivery.new(test_delivery_params)

    group_id = test_delivery_params[:group_id].to_i
    @group = Group.find(group_id)

    respond_to do |format|
      if @test_delivery.save
        format.html { redirect_to @group, notice: 'Groups test was successfully created.' }
        #format.json { render :show, status: :created, location: @test_delivery }
      else
        format.html { redirect_to @group, alert: 'Groups test not successfully created.' }
        #format.json { render json: @test_delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_deliveries/1
  # PATCH/PUT /test_deliveries/1.json
  def update
    respond_to do |format|
      if @test_delivery.update(test_delivery_params)
        format.html { redirect_to @test_delivery, notice: 'Groups test was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_delivery }
      else
        format.html { render :edit }
        format.json { render json: @test_delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_deliveries/1
  # DELETE /test_deliveries/1.json
  def destroy
    @test_delivery.destroy
    respond_to do |format|
      format.html { redirect_to test_deliveries_url, notice: 'Groups test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_delivery
      @test_delivery = TestDelivery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_delivery_params
      params.require(:test_delivery).permit(:test_id, :group_id, :only_listening, :"test_date(1i)", :"test_date(2i)", :"test_date(3i)")
    end
end
