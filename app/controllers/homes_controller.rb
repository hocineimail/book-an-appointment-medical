class HomesController < ApplicationController
  def index
  	 @datebookings = Datebooking.all
  end
end
