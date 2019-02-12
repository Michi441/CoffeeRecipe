class RecipesController < ApplicationController



    def new
        @coffee_profile = CoffeeProfile.find(params[:id])
        @recipe = @coffee_profile.recipes.new
    end


    def create
        @coffee_profile = CoffeeProfile.find(params[:coffee_profile_id])
        @recipe = @coffee_profile.recipes.create(recipes_params)

        if @recipe.save
            redirect_to root_path

        end

    end






    private

    def recipes_params
        params.require(:recipe).permit(:title, :instruction, :coffee_profile_id)
    end
end
