class VideosController < ApplicationController
  before_action :set_video, only: [:edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @challenges = Challenge.joins(:videos).uniq
    @videos = policy_scope(Video).order(created_at: :desc)
    if params[:query].present?
      @videos = Video.where(challenge_id: params[:query])
      respond_to do |format|
        format.html
        format.js
      end
    else
      @user = current_user
      if @user.events.last
        @event = Event.find(@user.events.last.id)
      end
    end
  end

  # def show
  #   @video = Video.find(params[:id])
  #   authorize @video
  # end

  def new
    @video = Video.new
    authorize @video
  end

  def create
    @video = Video.new(video_params)
    @video.user = current_user
    @challenge = Challenge.find(params[:challenge_id])
    @event = current_user.events.last
    @video.challenge = @challenge
    authorize @video
    if @video.save
      redirect_to videos_path
    else
      redirect_to event_path(@event), alert: "Please add a description"
    end
  end

  def destroy
    authorize @video
  end

  private

  def set_video
    @video = Video.find(params[:id])
    authorize @video
  end

  def video_params
    params.require(:video).permit(:tag, :video)
  end
end
