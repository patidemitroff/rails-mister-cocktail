class DosesController < ApplicationController
#   Prefix Verb   URI Pattern                                 Controller#Action
#              dose DELETE /doses/:id(.:format)                        doses#destroy
#    cocktail_doses POST   /cocktails/:cocktail_id/doses(.:format)     doses#create
# new_cocktail_dose GET    /cocktails/:cocktail_id/doses/new(.:format) doses#new
#         cocktails GET    /cocktails(.:format)                        cocktails#index
#                   POST   /cocktails(.:format)                        cocktails#create
#      new_cocktail GET    /cocktails/new(.:format)                    cocktails#new
#     edit_cocktail GET    /cocktails/:id/edit(.:format)               cocktails#edit
#          cocktail GET    /cocktails/:id(.:format)                    cocktails#show
#                   PATCH  /cocktails/:id(.:format)                    cocktails#update
#                   PUT    /cocktails/:id(.:format)                    cocktails#update
#                   DELETE /cocktails/:id(.:format)                    cocktails#destroy
#              root GET    /                                           cocktails#index


  def new
    cocktail_find
    @dose = Dose.new
  end

  def create
    cocktail_find
    @dose = Dose.new(doses_params)
    @dose.cocktail = @cocktail
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def doses_params
    params.require(:dose).permit(:amount, :description, :ingredient_id)
  end

  def cocktail_find
     @cocktail = Cocktail.find(params[:cocktail_id])
  end

end
