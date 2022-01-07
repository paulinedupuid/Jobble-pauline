class OffersController < ApplicationController
  def index
    @user = current_user
    @offers = Offer.where(job_id: @user.jobs.ids)
    # .reject to exclude rejected offers .excluding?
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
