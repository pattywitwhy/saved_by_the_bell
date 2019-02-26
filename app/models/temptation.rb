class Temptation < ApplicationRecord
  def index
    @temptations = Temptation.all
    render 'index.json.jbuilder'
  end

  def create
    @temptation = Temptation.new(
                                  name: params[:name],
                                  cost: params[:cost],
                                  frequency: params[:frequency],
                                  time: params[:time]
                                )

    if @temptation.save
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
    @temptation.cost = params[:cost] || @temptation.cost
    @temptation.frequency = params[:frequency] || @temptation.frequency
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