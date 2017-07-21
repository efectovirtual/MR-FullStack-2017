module Api
  module V1

    class UsersController < ApplicationController

      def create
        
      # params payload = {
      #   {
      #     user: {
      #       username: '',
      #       full_name: ''
      #     }
      #   }
      # }

        safe_params = params.require(:user).permit(:username, :full_name)
        user = User.new safe_params

        if user.save
          render json: user          
        else
          render json: {errors: user.errors}, status: :unprocessable_entity #422
        end

      end


      def show
        user = User.includes(:articles).find params[:id]
        render json: {user: user, articles: user.articles}
      end

    end

  end
end


request.headers['API-TOKEN']
User.find_by(email: request.headers['x-user-email'], token: request.headers['x-api-token'])

# jwt #gema