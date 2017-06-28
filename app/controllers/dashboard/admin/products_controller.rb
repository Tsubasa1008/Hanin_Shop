class Dashboard::Admin::ProductsController < Dashboard::Admin::AdminController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new 
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :description, :barcode, :price, :qty)
    end
end