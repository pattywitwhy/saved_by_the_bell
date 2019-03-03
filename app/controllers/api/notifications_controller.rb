class Api::NotificationsController < ApplicationController
  # def create
  #   @temptation = Temptation.new(temptation_params)

  #   respond_to do |format|
  #     @name = "Uber"
  #     if @temptation.save
  #       message = "Hey friend, skip the " + @name
  #       TwilioTextMessenger.new(message).call
  #       format.html { redirect_to @text, notice: 'Message created.' }
  #       format.json { render :show, status: :created, location: @text }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @temptation.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
end