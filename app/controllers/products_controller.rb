class ProductsController < ApplicationController


  def index
    @products = Product.all
    render :index
  end
  # def index
  #   if params[:most_rev]
  #     @products = Product.most_reviews
  #   elsif params[:local]
  #     @products = Product.localness
  #   elsif params[:most_recent]
  #     @products = Product.three_most_recent
  #   else
  #     @products = Product.all
  #   end
  #   render :index
  # end
  # above is an attempt to implement Travis version


  def localness
    params[:format]
    @products = Product.localness
    render :local
  end

   def three_most_recent
     params[:format]
     @products = Product.three_most_recent
     render :recents
   end

   def most_reviews
     params[:format]
     @products = Product.most_reviews
     render :most_rev
   end

  #


    def new
      @product = Product.new
      render :new
    end


    def create
      @product = Product.new(product_params)
      if @product.save
        flash[:notice] = "Product successfully added!"
        redirect_to products_path
      else
        render :new
      end
    end

    def edit
      @product = Product.find(params[:id])
      render :edit
    end

    def show
      @product = Product.find(params[:id])
      render :show
    end

    def update
      @product= Product.find(params[:id])
      if @product.update(product_params)
        redirect_to products_path
      else
        render :edit
      end
    end

    def destroy
      @product = Product.find(params[:id])
      @product.destroy
      flash[:notice] = "Product deleted!"
      redirect_to products_path
    end

    private
    def product_params
      params.require(:product).permit(:name, :cost, :country_of_origin)
    end
  end
