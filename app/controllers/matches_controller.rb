class MatchesController < ApplicationController

  def update
    @offer = Offer.find(params[:offer_id])
    @user = current_user
    if @user.matches.find_by_offer_id(@offer.id).present?
      @match = @user.matches.find_by_offer_id(@offer.id)
      @match.candidate_status = true
      if @match.save
        redirect_to offers_path
      else
        redirect_to root_path
      end
    else
      @match = Match.new
      @match.offer_id = @offer.id
      @match.candidate_status = true
      @match.user_id = @user.id
      if @match.save
        redirect_to offers_path
      else
        redirect_to root_path
      end
    end
  end
end
