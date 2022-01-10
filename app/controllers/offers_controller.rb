class OffersController < ApplicationController
  def index
    @user = current_user
    @offers = Offer.where(job_id: @user.jobs.ids)
    @selected_offers = []
    @offers.each do |offer| # iterate through offers
      if offer.matches.count.positive? # check if offer.matches exist
        offer.matches.each do |match| # if offer.matches exist, iterate through offer.matches
          if match.user_id == @user.id && match.candidate_status.nil? # check if user_id equals current_user and if candidate_status is nil
            unless match.recrutor_status == false
              @selected_offers << offer
            end
          end
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
