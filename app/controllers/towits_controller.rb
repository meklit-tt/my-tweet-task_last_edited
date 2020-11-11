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
   respond_to do |format|
    if @towit.save
      format.html { redirect_to @towit, notice: 'The tweet was created SUCCESSFULLY.' }
      format.json { render :show, status: :created, location: @towit }
    else
     format.html { render :new }
      format.json { render json: @towit.errors, status: :unprocessable_entity }
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
end
  private
  def set_towit
      @towit = Towit.find(params[:id])
  end
  def towit_params
    params.require(:towit).permit(:content)
  end
