class RemembersController < ApplicationController
    before_action :find_remember, only: [:show, :update, :destroy, :edit]
    def index
        @remembers = Remember.all
    end
    
    def show
    end
    
    def new
        @remember = Remember.new
    end
    
    def create
        @remember = Remember.new(remember_params)
        if @remember.save
            redirect_to @remember
        else
            render 'new'
        end
    end
    
    def edit
    end
    
    def update
        if @remember.update(remember_params)
            redirect_to @remember
        else
            render 'edit'
        end
    end
    
    def destroy
        @remember.destroy
        redirect_to remembers_path
    end
    
    private
    
    def find_remember
        @remember = Remember.find(params[:id])
    end
    
    def remember_params
        params.require(:remember).permit(:name, :school, :content)
    end
end
