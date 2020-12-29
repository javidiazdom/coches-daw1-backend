class NewsController < ApplicationController

    def new
    end

    def index
        @news = New.all
      end
end
