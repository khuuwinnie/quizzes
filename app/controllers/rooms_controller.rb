class RoomsController < ApplicationController
  def index
    @rooms = Room.order('created_at desc').paginate(:per_page => 5, :page => params[:page])

  end
end
