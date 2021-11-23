class RegistrationsController < Devise::RegistrationsController
#   layout 'login'
#   skip_before_filter :require_no_authentication
#   before_filter :resource_name

#   def resource_name
#     :user
#   end

#   def new
#     @user = User.new
#   end

#   def create
#     @user = User.new(user_params)
#     if @user.save
#       redirect_to chair_path(@chair), notice: "La chaise a été ajoutée avec succès !"
#     else
#       render :new
#     end
#     # another stuff here
#   end

#   private

#   def user_params
#     params.require(:user).permit(:first_name, :last_name, :address, :bio, :birth_date,
#                                  :gender, :photo, :phone_number, :role, :languages, :hobbies, :chosen_activities)
#   end
end
