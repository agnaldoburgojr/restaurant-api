class RegistrationsController < ApplicationController 
  def create
    # password_hash =  BCrypt::Password.create(params[:password])

    # user = User.create!(name: params[:name], email: params[:email], password_hash: password_hash)
    # render json: user

    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(
      :name, :email, :password, :password_confirmation
    )
  end
end