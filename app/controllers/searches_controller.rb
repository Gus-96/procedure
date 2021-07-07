class SearchesController < ApplicationController
    def show
        @search = Search.find(params[:id])
    end 

    def new 
        @search = Search.new
        @titles = Procedure.distinct.pluck(:title)
        @descriptions = Procedure.distinct.pluck(:description)
    end

    def create
        @search = Search.create(search_params)
        redirect_to @search
    end 

    private
    def search_params
        params.require(:search).permit(:title, :description)
    end 
end