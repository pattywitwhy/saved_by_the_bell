class Api::TemptationsController < ApplicationController
  before_action :authenticate_user, only: [:create]
  def index
    @temptations = Temptation.all
    render 'index.json.jbuilder'
  end

  def create
    @temptation = Temptation.new(
                                  name: params[:name],
                                  cost: params[:cost],
                                  sunday: params[:sunday],
                                  monday: params[:monday],
                                  tuesday: params[:tuesday],
                                  wednesday: params[:wednesday],
                                  thursday: params[:thursday],
                                  friday: params[:friday],
                                  saturday: params[:saturday],
                                  time: params[:time],
                                  user_id: current_user.id
                                )

    if @temptation.save
      @name = @temptation.name
      client = Twilio::REST::Client.new
        client.messages.create({
          :from => Rails.application.credentials.twilio_phone_number,
          :to => '+16108642346',
          :body => 'Hey friend, skip the ' + @name
        })
      render 'show.json.jbuilder'
    else
      render json: { errors: @temptation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @temptation = Temptation.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @temptation = Temptation.find(params[:id])

    @temptation.name = params[:name] || @temptation.name
    @temptation.sunday = params[:sunday] || @temptation.sunday
    @temptation.monday = params[:monday] || @temptation.monday
    @temptation.tuesday = params[:tuesday] || @temptation.tuesday
    @temptation.wednesday = params[:wednesday] || @temptation.wednesday
    @temptation.thursday = params[:thursday] || @temptation.thursday
    @temptation.friday = params[:friday] || @temptation.friday
    @temptation.saturday = params[:saturday] || @temptation.saturday
    @temptation.cost = params[:cost] || @temptation.cost
    @temptation.time = params[:time] || @temptation.time

    if @temptation.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @temptation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    temptation = Temptation.find(params[:id])
    temptation.destroy
    render json: {message: "Success"}
  end
end
