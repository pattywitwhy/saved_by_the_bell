class Api::GoalsController < ApplicationController
  def index
    @goals = Goal.all
    render 'index.json.jbuilder'
  end

  def create
    @goal = Goal.new(
                      name: params[:name],
                      start: params[:start],
                      end: params[:end],
                      dollar_amount: params[:dollar_amount]
                    )

    if @goal.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @goal.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @goal = Goal.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @goal = Goal.find(params[:id])

    @goal.name = params[:name] || @goal.name
    @goal.start = params[:start] || @goal.start
    @goal.end = params[:end] || @goal.end
    @goal.dollar_amount = params[:dollar_amount] || @goal.dollar_amount

    if @goal.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @goal.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    goal = Goal.find(params[:id])
    goal.destroy
    render json: {message: "Success"}
  end
end
