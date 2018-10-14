class TimetebookingsController < ApplicationController
	before_action :set_timetebooking, only: [:repa,]
		def create


    @datebooking = Datebooking.find(params[:datebooking_id])
  
      @timebooking = @datebooking.timetebookings.create(timebooking_params)
      redirect_to datebooking_path(@datebooking)
     
    
	end






   private 
   def timebooking_params
   params.require(:timetebooking).permit(:nome, :prenom, :telephpne , :time) 

   	
   end


end

   