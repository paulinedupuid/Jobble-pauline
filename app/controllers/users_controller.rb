class UsersController < ApplicationController
 ################################# USER ################################
  def profile
    @user = current_user
    @profile_user = User.find(params[:format])
  end

  def sign_out
  end

  def update_users
    @user = current_user
    @user.update(user_params)
    redirect_to profile_path(@user)
  end
 #######################################################################

 ################################# USERSKILL ################################

#  new_user_skills
# user = current_user
# user_skill = UserSkill.new
#
#  essayer de recup le params dans le create le offer id
#  create_user_skills
# skills = params[:user_skill][:skill_id]
# skills.shift(1)
# skills.each do |skill|
#  @user_skill = UserSkill.new(params_user_skills)
# ser_skill.skill_id = skill.to_i
# ser_skill.user_id = current_user.id
# ser_skill.save
# nd
# edirect_to root_path
#

######################################################################################

################################# UserJob ############################################

#  def new_user_jobs
#    @user = current_user
#    @user_job = UserJob.new
#  end
#
#  def create_user_jobs
#    @user = current_user
#    @jobs = params[:user_job][:job_id]
#    @jobs.shift(1)
#
#    @jobs.each do |job|
#   @user_job = UserJob.new(params_user_jobs)
#   @user_job.job_id = job.to_i
#   @user_job.user_id = current_user.id
#   @user_job.save
#    end
#    redirect_to new_user_jobs_users_path
#  end

# ****************************************************************************
  # Instanciation of the models to use in the form.

  def professional_update
    @user = current_user
    @job = UserJob.new
    @skill = UserSkill.new
  end

  # Update of the job if it curently exist for the current_user and creation if it doesn't exist

  def job_update
    @user = current_user
    @experience = params[:user_job][:experience].to_i
    @idjob = params[:job_id].split[1].to_i
    if @user.jobs.ids.include?(@idjob)
      @user_job = UserJob.where(job_id: @idjob)
      @user_job.update(experience: @experience)
    else
      @user_job = UserJob.new(experience: @experience, job_id: @idjob)
      @user_job.user = @user
      @user_job.save!
    end
    redirect_to professional_update_path
  end

  # Update of the skill if it curently exist for the current_user and creation if it doesn't exist

  def skill_update
    @user = current_user
    @skill_id = params[:user_skill][:skill_id]
    @skill_id.delete_at(0)
    @level = params[:user_skill][:level]
    @skill_id.each do |skill|
      if @user.skills.ids.include?(skill.to_i)
        @user_skill = UserSkill.where(skill_id: skill.to_i)
        @user_skill.update(level: @level)
      else
        @user_skill = UserSkill.new(level: @level, skill_id: skill.to_i)
        @user_skill.user = @user
        @user_skill.save!
      end
    end
    redirect_to professional_update_path
  end

  # Update of the description of the current_user

  def description_maj
    @user = current_user
    @description = params[:user][:description]
    @user.description = @description
    @user.save!
    redirect_to professional_update_path
  end

########################################################################################
  def dashboard
    @user = current_user
  end # end du dashboard

  def message_index
   @chatrooms = Chatroom.where(user_id: current_user) + Chatroom.where(recrutor: current_user)
  end

  private

####################### PARAMS_USER_SKILLS #########################################
  def params_user_skills
    params.require(:user_skill).permit(:level, :skill_id)
  end

########################################################################################

####################### PARAMS_USER_JOBS #########################################

  def params_user_jobs
    params.require(:user_job).permit(:experience, :job_id)
  end

  ########################################################################################
# a faire marcher

# def params_update_user_jobs
#   params.require(:user_job).permit(:experience, :job_id)
# end

########################################################################################

  ####################### PARAMS_USER #########################################


  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :city, :gender, :birthdate, :recrutor, :description)
  end

    ########################################################################################
end
