class Api::NotificationsController < ApplicationController
  def create
    @notification = Notification.new(
                                      client = params[:client],      
                                      client_number = params[:client_number],
                                      time = params[:time],
                                      message = params[:message]
                                    )
  end

  def notify
    
    
    # client = Twilio::REST::Client.new
    #   client.messages.create({
    #     :from => Rails.application.credentials.twilio_phone_number,
    #     :to => '+16108642346',
    #     :message => 'this will be an example of the notification you recieve'
    #   })
    
  end




end


#create a new controller
#need to write it in json.



# if this temptation.id == current_user.id
 #return a message ....#{temptation.id} 