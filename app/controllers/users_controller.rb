class UsersController < ApplicationController
def new_user_skills
  @user_skill = UserSkill.new
  #  @skill = Skill.where(id: params[:offer_id[1]])
  #  p @skill
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

private

def params_user_skills
  params.require(:user_skill).permit(:level, :skill_id)
end

end
