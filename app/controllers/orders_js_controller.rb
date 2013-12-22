class OrdersJsController < ApplicationController
  before_action :set_orders_j, only: [:show, :edit, :update, :destroy]

  # GET /orders_js
  # GET /orders_js.json
  def index
    @orders_js = OrdersJ.all
  end

  # GET /orders_js/1
  # GET /orders_js/1.json
  def show
  end

  # GET /orders_js/new
  def new
    @orders_j = OrdersJ.new
  end

  # GET /orders_js/1/edit
  def edit
  end

  # POST /orders_js
  # POST /orders_js.json
  def create
    @orders_j = OrdersJ.new(orders_j_params)

    respond_to do |format|
      if @orders_j.save
        format.html { redirect_to @orders_j, notice: 'Orders j was successfully created.' }
        format.json { render action: 'show', status: :created, location: @orders_j }
      else
        format.html { render action: 'new' }
        format.json { render json: @orders_j.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders_js/1
  # PATCH/PUT /orders_js/1.json
  def update
    respond_to do |format|
      if @orders_j.update(orders_j_params)
        format.html { redirect_to @orders_j, notice: 'Orders j was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @orders_j.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders_js/1
  # DELETE /orders_js/1.json
  def destroy
    @orders_j.destroy
    respond_to do |format|
      format.html { redirect_to orders_js_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orders_j
      @orders_j = OrdersJ.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orders_j_params
      params.require(:orders_j).permit(:name)
    end
end
