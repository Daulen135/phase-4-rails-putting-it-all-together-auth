
class RecipesController < ApplicationController

# skip_before_action :authorize, only: create

def create
 recipe =@current_user.recipe.create!(recipe_params)
 render json:recipe, status: created
end


 

 def index
    recipes = Recipe.all
    render json: recipes
 end
private

def recipe_params
params.permit(:title,:instructions, :minutes_to_complete)

end

end
