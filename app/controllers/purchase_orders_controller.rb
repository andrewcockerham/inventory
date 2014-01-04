class PurchaseOrdersController < ApplicationController
  before_action :set_purchase_order, only: [:show, :edit, :update, :destroy]
# Custom methods
  def polyimideinner
    @purchase_orders = PurchaseOrder.all
    @items = Item.all
    @polyimide_purchase_orders = @purchase_orders.items #.find_by_id(400005)
    # @polyimide_purchase_orders = @items.
  end


################
# Default methods
  # GET /purchase_orders
  # GET /purchase_orders.json
  def index
    @purchase_orders = PurchaseOrder.all
  end

  # GET /purchase_orders/1
  # GET /purchase_orders/1.json
  def show
    @q = Quantity.find_all_by_purchase_order_id(params[:id])
    # @q_amount = 10
  end

  # GET /purchase_orders/new
  def new
    @purchase_order = PurchaseOrder.new
    @todays_date = Date.today.to_s.delete("-")
    if PurchaseOrder.first
      @last_date = PurchaseOrder.last.purchase_order_number.split("-")[0]
      @last_number = PurchaseOrder.last.purchase_order_number.split("-")[1]
    end
    if @last_date == @todays_date
      @next_po_number = @todays_date + "-" + "0" + (@last_number.to_i + 1).to_s
    else
      @next_po_number = @todays_date + "-01"
    end
    @purchase_order.purchase_order_number = @next_po_number
    # @q = @purchase_order.quantity.build ## something like this to create the Quantity record?
    @purchase_order.save
    @purchase_order.quantities.build
    #@q = Quantity.last
    # @q = Quantity.find_by_purchase_order_id(@purchase_order.id)
    @items = Item.all.order("part_number")
    @suppliers = Supplier.all.order("name")
  end

  # GET /purchase_orders/1/edit
  def edit
    @items = Item.all.order("part_number")
    @suppliers = Supplier.all.order("name")
  end

  # POST /purchase_orders
  # POST /purchase_orders.json
  def create
    @purchase_order = PurchaseOrder.new(purchase_order_params)
    @items = Item.all.order("part_number")
    @suppliers = Supplier.all.order("name")
    respond_to do |format|
      if @purchase_order.save
        format.html { redirect_to @purchase_order, notice: 'Purchase order was successfully created.' }
        format.json { render action: 'show', status: :created, location: @purchase_order }
      else
        format.html { render action: 'new' }
        format.json { render json: @purchase_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchase_orders/1
  # PATCH/PUT /purchase_orders/1.json
  def update
    # @q = Quantity.last
    @items = Item.all.order("part_number")
    @suppliers = Supplier.all.order("name")
    respond_to do |format|
      if @purchase_order.update(purchase_order_params)
        format.html { redirect_to @purchase_order, notice: 'Purchase order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @purchase_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_orders/1
  # DELETE /purchase_orders/1.json
  def destroy
    @purchase_order.destroy
    respond_to do |format|
      format.html { redirect_to purchase_orders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase_order
      @purchase_order = PurchaseOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchase_order_params
      params.require(:purchase_order).permit(:Date, :purchase_order_number, :description, :amount,  
                                              :count, :quantities_attributes => [:count], # [:count,:id]
                                              :item_ids => [], :item_attributes => [], :supplier_ids => [])
                                              #:orders_attributes => [:id]) :quantity,
                                              #:supplier_attributes => [:name]) :quantity => [],
    # :part_number
    end
end
