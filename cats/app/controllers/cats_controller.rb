
class CatsController < ApplicationController
    def index
        @cats = Cat.all
        render :index
        # render json: @cats
    end

    def create
        @cat = Cat.new(cat_params)

        if @cat.save #redirect to cat_url(@cat)
            # render json: @cat
            redirect_to cat_url(@cat)
        else 
            render json: @cat.errors.full_messages, status: 422
        end
        
    end

    def destroy
        @cat = Cat.find(params[:id])
        @cat.destroy
        redirect_to cats_url
    end

    def show
        @cat = Cat.find(params[:id])
        if @cat
            render :show
        else
            redirect_to cats_url
        end
    end

    def update 
        @cat = Cat.find(params[:id])
        if @cat.update(cat_params)
            redirect_to cat_url(@cat)
        else
            render json: @cat.errors.full_messages, status: 422
        end
    end

    def new
        render :new
    end

    def edit 
        @cat = Cat.find(params[:id])
        render :edit
    end

    private

    def cat_params
        params.require(:cat).permit( :birth_date, :color, :name, :sex, :description )
    end

end