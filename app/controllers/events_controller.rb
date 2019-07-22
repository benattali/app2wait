class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show]


  def show
    @video = Video.new
    @challenge = Challenge.find_by(name: @event.name)
    # @group = Group.find(@event.group.id)

  end

  def new
    @challenge = Challenge.find(params[:challenge_id])
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    # @event_level = EventsLevel.find(event_level[:id])
    if params[:challenge]
      @challenge = Challenge.find(params[:challenge])
      @event.name = @challenge.name
      @event.photo = @challenge.photo.url
      if params[:event][:group_id] == ''
        redirect_to challenge_path(@challenge), alert: 'Please select a group'
      else
        @event.group = Group.find(params[:event][:group_id])
      end
      @event.save
    else
      redirect_to challenges_path
    end

    authorize @event
    if @event.save
      @challenge.levels.sort_by(&:time).each do |level|
        one_level = Level.find(level.id)
        @event_level = EventsLevel.new(time: one_level.time, description: one_level.description, event_id: @event.id)
        time = level[:time].to_i
        finish_time = Time.now.utc + time.minutes
        @event_level.save
        @event_level.update(time: time, challenge_end_time: finish_time)
      end
      redirect_to event_path(@event)
      mail = EventMailer.send_emails(@event)
    # mail.deliver_now
    else
      render :new
      # redirect_to challenges_path(@challenge)
    end
  end

  def edit
  end

  def update
    params[:event][:events_levels_attributes].each do |_, event_level|
      @event_level = EventsLevel.find(event_level[:id])
      time = event_level[:time].to_i
      finish_time = Time.now.utc + time.minutes
      @event_level.update(time: time, challenge_end_time: finish_time)

      if @event_level.update(time: event_level[:time])
        next
      else
        render :edit and return
      end
    end
    redirect_to event_path(@event)
  end

  def destroy
    @event.destroy
    redirect_to challenges_path
  end

  private

  def event_params
    params.require(:event).permit(:group)
  end

  def set_event
    @event = Event.find(params[:id])
    authorize @event
  end
end
