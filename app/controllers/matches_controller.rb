class MatchesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create # like
    @offer = Offer.find(params[:offer_id])
    @user = current_user
    # check if match exists

    if @user.matches.find_by_offer_id(@offer.id).present?
      @match = @user.matches.find_by_offer_id(@offer.id)
      @match.candidate_status = true
      if @match.save
        # render 'shared/animation'
         unless Chatroom.where(user_id: current_user, recrutor: @offer.user_id).count.positive?
          @chatroom = Chatroom.new(name: @offer.title, user_id: @user.id, recrutor: @offer.user_id)
          if @chatroom.save
            Message.create(content: 'ceci es le début de votre conversation', user_id: 13, chatroom_id: @chatroom.id )
          end
         end
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


  def reject
    @offer = Offer.find(params[:offer_id])
    @user = current_user
    # check if match exists

    if @user.matches.find_by_offer_id(@offer.id).present?
      @match = @user.matches.find_by_offer_id(@offer.id)
      @match.candidate_status = false
      if @match.save
        redirect_to offers_path
      else
        redirect_to root_path
      end
    else
      @match = Match.new
      @match.offer_id = @offer.id
      @match.candidate_status = false
      @match.user_id = @user.id
      if @match.save
        redirect_to offers_path
      else
        redirect_to root_path
      end
    end
  end

  # add a private method (refacto)

end
