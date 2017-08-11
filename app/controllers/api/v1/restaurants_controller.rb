module Api
  module V1
    class RestaurantsController < ApplicationController
      def index
        render json: Restaurant.all
      end
    end
  end
end
