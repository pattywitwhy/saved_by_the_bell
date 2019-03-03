class Api::UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation], 
      goal_title: nil,
      goal_amount: nil,
      goal_start: nil, 
      goal_end: nil
    )
    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @user = current_user

    @user.goal_title = params[:goal_title] || @user.goal_title
    @user.goal_amount = params[:goal_amount] || @user.goal_amount
    @user.goal_start = params[:goal_start] || @user.goal_start
    @user.goal_end = params[:goal_end] || @user.goal_end

    if @user.save
      render json: {message: "User updated status successfully"}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
