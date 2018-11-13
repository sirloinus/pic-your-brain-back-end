class Api::V1::GamesController < ApplicationController
    before_action :find_game, only: [:show, :update]

    def index
        @games = Game.all
        render json: @games
    end

    def show
        # @game = Game.find_by(id: params[:id])
        if @game
            render json: @game
        else
            render json: {error: 'Game Not Found!'}, status: 400
        end
    end

    def create
        @game = Game.new(game_params)
        if @game.save
            render json: @game
        else
            render json: {error: 'Unable To Create Game!'}, status: 400
        end
    end

    def update
        @game.update(game_params)
        if @game.save
            render json: @game, status: 200
        else 
            render json: {errors: @game.errors.full_messages}, status: 400
        end 
    end

    private

    def game_params
        params.require(:game).permit(:id, :user_id, :points, :time, :penalties, :level)
    end

    def find_game
        @game = Game.find(params[:id])
    end
end