class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :edit, :update, :destroy]

  # GET /favorites
  # GET /favorites.json
  def index
    if user_signed_in? 
        @favorites = current_user.favorites.order("created_at DESC")
    else
      redirect_to user_session_path, notice: 'Please login first'
    end 
  end

  # GET /favorites/1
  # GET /favorites/1.json
  def show
  end

  # GET /favorites/new
  def new
    @favorite = Favorite.new
  end

  # GET /favorites/1/edit
  def edit
  end

  # POST /favorites
  # POST /favorites.json
  def create
    if user_signed_in? 

        product = Product.find(params[:product_id])
        current_product_fevorite = Favorite.find_by(product_id: product.id, user_id: current_user.id)
        if current_product_fevorite
           current_product_fevorite.destroy
          else
          @favorite = Favorite.new(product_id: product.id, user_id: current_user.id)
          if @favorite.save
            else
             render :new
          end
        end

      else
        render :js => "alert('Please login first');"
    end
  end

  # PATCH/PUT /favorites/1
  # PATCH/PUT /favorites/1.json
  def update
    respond_to do |format|
      if @favorite.update(favorite_params)
        format.html { redirect_to @favorite, notice: 'Favorite was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite }
      else
        format.html { render :edit }
        format.json { render json: @favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  def destroy
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_to favorites_url, notice: 'Product removed from favorites.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite
      @favorite = Favorite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_params
      params.require(:favorite).permit(:product_id, :user_id)
    end
end
