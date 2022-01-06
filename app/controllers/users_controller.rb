class UsersController < ApplicationController
 ################################# USER ################################
  def show
    @user = User.find(params[:id])
  end

  def update_users
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end
 #######################################################################

 ################################# USERSKILL ################################

def new_user_skills
  @user = current_user
  @user_skill = UserSkill.new
end
# a essayer de recup le params dans le create le offer id
def create_user_skills
  @skills = params[:user_skill][:skill_id]
  @skills.shift(1)
  @skills.each do |skill|
    @user_skill = UserSkill.new(params_user_skills)
 @user_skill.skill_id = skill.to_i
 @user_skill.user_id = current_user.id
 @user_skill.save
  end
  redirect_to root_path
end

######################################################################################

################################# UserJob ############################################

def new_user_jobs
  @user = current_user
  @user_job = UserJob.new
end

def create_user_jobs
  @jobs = params[:user_job][:job_id]
  @jobs.shift(1)

  @jobs.each do |job|
 @user_job = UserJob.new(params_user_jobs)
 @user_job.job_id = job.to_i
 @user_job.user_id = current_user.id
 @user_job.save
  end
  redirect_to root_path
end


########################################################################################
  def dashboard
    @user = current_user
  end

  private

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

    ####################### PARAMS_USER #########################################


  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :city, :gender, :birthdate, :recrutor, :description)
  end

 ########################################################################################
end
