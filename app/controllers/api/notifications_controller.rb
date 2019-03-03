class Api::NotificationsController < ApplicationController
  def create
    @temptation = Temptation.new(temptation_params)

    respond_to do |format|
      @name = "Uber"
      if @temptation.save
        message = "Hey friend, skip the " + @name
        TwilioTextMessenger.new(message).call
        format.html { redirect_to @text, notice: 'Message created.' }
        format.json { render :show, status: :created, location: @text }
      else
        format.html { render :new }
        format.json { render json: @temptation.errors, status: :unprocessable_entity }
      end
    end
  end

  # def send(**args)
  #   twilioCommand = Twilio.Command.new()
  #   twilioCommand.exec!(to:usertel, body: "Account Notification")
  # end

  # def create
    # @notification = Notification.new(
    #                                   client = params[:client],      
    #                                   client_number = params[:client_number],
    #                                   time = params[:time],
    #                                   message = params[:message]
    #                                 )
  # end

  # def notify
  #   send_text
  # end

end


#create a new controller
#need to write it in json.



# if this temptation.id == current_user.id
 #return a message ....#{temptation.id} 