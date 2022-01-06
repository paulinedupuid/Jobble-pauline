class OffersController < ApplicationController
  def index
    @user = current_user
    @offers = Offer.where(job_id: @user.jobs.ids)
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
