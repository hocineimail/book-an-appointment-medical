class TimetebookingsController < ApplicationController
	before_action :set_timetebooking, only: [:repa,]
		def create


    @datebooking = Datebooking.find(params[:datebooking_id])
    @zeb = params.require(:timetebooking).permit(:time) 
    @rep = true
     
      if @rep == true
      @timebooking = @datebooking.timetebookings.create(timebooking_params)
      redirect_to datebooking_path(@datebooking)
     else 
        redirect_to datebooking_path(@datebooking)
     end
	end



def repa 
	@datebooking.timetebookings.each do  |n|
       if n.time ==  @zeb
            @rep = false
       end
      end 
end



   private 
   def timebooking_params
   params.require(:timetebooking).permit(:nome, :prenom, :telephpne , :time) 

   	
   end


end

   