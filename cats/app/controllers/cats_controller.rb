
class CatsController < ApplicationController
    def index
        @cats = Cat.all
    end

    def create
        @cat = Cat.new(cat_params)

        if @cat.save
            render json: @cat
        else 
            render json: @cat.errors.full_messages, status: 422
        end
        
    end

    def destroy
    end

    def show
    end

    def update 
    end

    def new
    end

    def edit 
    end

    private

    def cat_params
        params.require(:cat).permit( :birth_date, :color, :name, :sex, :description )
    end

end