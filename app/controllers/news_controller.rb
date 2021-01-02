class NewsController < ApplicationController
    before_action :set_new, only: [:show, :edit, :update, :destroy]
    def new
        @new = New.new
    end

    def index
        @news = New.all
    end

    def create
        #render plain: params[:new].inspect
        @new = New.new(new_params)
        @new.save
        redirect_to news_path
    end

    def show
    end

    def edit
    end

    def update
        @new.update new_params
        redirect_to @new
    end

    def destroy
        @new.destroy
        redirect_to news_path
    end

    private

    def new_params
        params.require(:new).permit(:title, :description, :picture_url, :category)
    end

    def set_new
        @new = New.find params[:id]
    end

end
