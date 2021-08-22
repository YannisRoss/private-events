class EventAttendancesController < ApplicationController

  def index
    @event_attendances = EventAttendance.all
  end

  def new
    @event_attendance = EventAttendance.new
    @event = Event.find(params[:event_id]) 

  end

  def create
    @event_attendance = EventAttendance.new(event_attendance_params)

    respond_to do |format|
      if @event_attendance.save
        format.html { redirect_to @event_attendance, notice: "event_attendance was successfully created." }
        format.json { render :show, status: :created, location: @event_attendance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

end
