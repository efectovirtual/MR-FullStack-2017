module Api
  module V1

    class ArticlesController < ApplicationController

      def create

        safe_params = params.require(:article).permit(:title, :body, :user_id)
        article = Article.new 

        article.user_id = params[:user_id]

        if article.save
          render json: article          
        else
          render json: {errors: article.errors}, status: :unprocessable_entity #422
        end

      end


      def show
        article = Article.find params[:id]
        render json: article
      end






    end

  end
end



# body = { article: {title: 'Titulo 002', body: 'Contenido 002', user_id: 2}}.to_json
# headers = {'Content-Type' => 'application/json'}

# response = HTTParty.post('http://localhost:3000/api/v1/users/1/articles', body: body, headers: headers)


#traerme el user
# response = HTTParty.get('http://localhost:3000/api/v1/users/1')

# response['articles'].map do |article_id|
#   HTTParty.get('http://localhost:3000/api/v1/users/1/articles/#{article_id}')
# end



# body = { user: {username: '', full_name: 'Alberto Rodriguez Diaz'}}.to_json
# headers = {'Content-Type' => 'application/json'}

# response = HTTParty.post('http://localhost:3000/api/v1/users', body: body, headers: headers)











