class DiariesController < ApplicationController
  before_action :set_diary, only: [:edit, :update, :show, :destory]

  def index
    
  end

  def show
    
  end

  def edit
    
  end

  def update
    
  end
  
  def new
    
  end

  def create
    
  end

  def destroy
    
  end

  private
  def set_diary
    @diary = Diary.find_by params[:id]
  end
end
