class OffersController < ApplicationController
  def index
    @user = current_user
    @offers = Offer.where(job_id: @user.jobs.ids)
    @selected_offers = []
    @offers.each do |offer| # iterate through offers
      if offer.matches.count.positive? # check if offer.matches exist
        if offer.matches.find_by_user_id(@user.id).present? # if match belongs to the current user
          if offer.matches.find_by_user_id(@user.id).candidate_status.nil? # if candidate.status exist and is nil
            @selected_offers << offer
          end
        else
          @selected_offers << offer
        end
      else
        @selected_offers << offer
      end
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def matches
    @user = current_user
    @matches = Match.where(candidate_status: true, recrutor_status: true, user_id: @user.id)
    @offers = []
    @matches.each do |match|
      @offers << Offer.find(match.offer_id)
    end
  end
end
