class NewsController < ApplicationController

    def new
        @new = New.new
    end

    def index
        @news = New.all
    end

    def create
        #render plain: params[:new].inspect
        @new = New.new new_params
        @new.save
        redirect_to @new
    end

    def show
        @new = New.find params[:id]
    end

    def edit
        @new = New.find params[:id]
    end

    def update
        @new = New.find params[:id]
        @new.update new_params
        redirect_to @new
    end

    private

    def new_params
        params.require(:new).permit(:title, :description, :picture_url, :category)
    end


end
