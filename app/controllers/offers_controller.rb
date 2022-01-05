class OffersController < ApplicationController
  def index
    @user = current_user
    @offers = Offer.where(job_id: @user.jobs.ids)
    raise
  end
end
