class EventAttendancesController < ApplicationController

  def index
    @event_attendances = EventAttendance.all
  end

  def new
    @event_attendance = EventAttendance.new
    @event = Event.find(params[:event_id]) 

    @event_attendance.user_id = current_user.id
    @event_attendance.event_id = @event.id

  end

  def create

    @event_attendance = EventAttendance.new(event_attendance_params)

    respond_to do |format|
      if @event_attendance.save
        format.html { redirect_to events_url, notice: "event_attendance was successfully created." }
        format.json { head :no_content }
      else
       format.html { redirect_to events_url, alert: "event_attendance failed: #{@event_attendance.errors.full_messages}" }#render :new, status: :unprocessable_entity }
        format.json { render json: @event_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_attendance
      @event_attendance = EventAttendance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_attendance_params
      params.require(:event_attendance).permit(:event_id, :user_id)
    end

end
