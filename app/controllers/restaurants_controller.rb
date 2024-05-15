class RestaurantsController < ApplicationController
  def index
    def index
      @restaurants = Restaurants.all
    end

    def show
      @restaurants = Restaurants.find(params[:id])
    end

    def new
      @restaurants = Restaurants.new
    end

    def create
      @restaurants = Restaurants.new(restaurants_params)

      if @restaurants.save
        redirect_to @restaurants
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
      @restaurants = Restaurants.find(params[:id])
    end

    def update
      @restaurants = Restaurants.find(params[:id])

      if @restaurants.update(restaurants_params)
        redirect_to @restaurants
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @restaurants = Restaurants.find(params[:id])
      @restaurants.destroy

      redirect_to root_path, status: :see_other
    end

    # private
    #   def restaurants_params
    #     params.require(:restaurants).permit(:title, :body)
    #   end
  end
  end
end
