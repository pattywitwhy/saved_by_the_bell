require 'twilio-ruby'

class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :temptation


  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    @name = "Uber"
    @client = Twilio::REST::Client.new
      @client.messages.create({
        :from => Rails.application.credentials.twilio_phone_number,
        :to => '+16108642346',
        :body => message
      }) 
  end
  # attr_accessor :client, :client_number, :time, :body

  # def initialize(input_args)
  #   @client = input_args['client']
  #   @client_number = input_args['client_number']
  #   @time = input_args['time']
  #   @body = input_args['message']
  # end

  # def temptation_name
  #   notification.name = temptation.name
  # end


  # def send_text
  #   @name = @temptation.name
  #   # @name = "Uber"
  #   client = Twilio::REST::Client.new
  #     client.messages.create({
  #       :from => Rails.application.credentials.twilio_phone_number,
  #       :to => '+16108642346',
  #       :body => 'Hey friend, skip the ' + @name
  #     })
  # end

  # def exec!( **args)
  #   @name = "Uber"
  #   @client = Twilio::REST::Client.new
  #     @client.messages.create({
  #       :from => Rails.application.credentials.twilio_phone_number,
  #       :to => '+16108642346',
  #       :body => 'Hey friend, skip the ' + @name
  #     }) 
  # end
  
end
