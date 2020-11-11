class TowitsController < ApplicationController
  before_action :set_towit, only: [:show, :edit, :update, :destroy]
   def index
     @towits = Towit.all
   end

   def new
     @towit = Towit.new
   end

   def create
    @towit = Towit.new(towit_params)
     if params[:back]
     render:new
     else
      if @towit.save
    redirect_to towits_path, notice: "I make twit!"
     else
    render:new
  end
  end
end
  def show
  end
  def edit
  end
  def update
      if @towit.update(towit_params)
         redirect_to towits_path, notice: "twit edited!"
      else
         render :edit
  end
  end
  def destroy
      @towit.destroy
      redirect_to towits_path, notice: "twit deleted!"
  end
  def ​confirm(towit_params)
      ​@towit = Towit.new(towit_params)
      render :new if @towit.invalid?
 end
  private
  def set_towit
      @towit = Towit.find(params[:id])
  end
  def towit_params
      params.require(:towit).permit(:content)
  end
  end
