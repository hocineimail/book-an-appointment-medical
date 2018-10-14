class DatebookingsController < ApplicationController
  before_action :set_datebooking, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!
  # GET /datebookings
  # GET /datebookings.json
  def index
    @datebookings = Datebooking.all
  end

  # GET /datebookings/1
  # GET /datebookings/1.json
  def show
      @datebookings = Datebooking.all
   @com = @datebooking.timetebookings.count
    if @com == 15
     @datebooking.etat = false
    else
      @res = 15 - @com
      @datebooking.etat = true  
    end
  end

  # GET /datebookings/new
  def new
    @datebooking = Datebooking.new
  end

  # GET /datebookings/1/edit
  def edit
  end

  # POST /datebookings
  # POST /datebookings.json
  def create
    @datebooking = Datebooking.new(datebooking_params)

    respond_to do |format|
      if @datebooking.save
        format.html { redirect_to @datebooking, notice: 'Datebooking was successfully created.' }
        format.json { render :show, status: :created, location: @datebooking }
      else
        format.html { render :new }
        format.json { render json: @datebooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datebookings/1
  # PATCH/PUT /datebookings/1.json
  def update
    respond_to do |format|
      if @datebooking.update(datebooking_params)
        format.html { redirect_to @datebooking, notice: 'Datebooking was successfully updated.' }
        format.json { render :show, status: :ok, location: @datebooking }
      else
        format.html { render :edit }
        format.json { render json: @datebooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datebookings/1
  # DELETE /datebookings/1.json
  def destroy
    @datebooking.destroy
    respond_to do |format|
      format.html { redirect_to datebookings_url, notice: 'Datebooking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datebooking
      @datebooking = Datebooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datebooking_params
      params.require(:datebooking).permit(:date, :etat, :user_id)
    end
end
