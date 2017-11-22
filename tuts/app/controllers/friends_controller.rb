class FriendsController < ApplicationController
  before_action :find_friend, only: [:show, :edit, :update, :destroy]

  def index
    @friends = Friend.all
  end

  def show
  end

  def new
    @friend = Friend.new
  end

  def edit
  end

  def create
    friend = Friend.new(friend_params)
    if friend.save
      respond_to do |format|
        format.html { redirect_to friend, notice: 'Friend was successfully created.' }
        format.json { render action: 'show', status: :created, location: @friend }
      end
    else
      respond_to do |format|
        format.html { render action: 'new' }
        format.json { render json: friend.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    if @friend.update(friend_params)
      respond_to do |format|
        format.html { redirect_to @friend, notice: 'Friend was successfully updated.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { render action: 'edit' }
        format.json { render json: @friend.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @friend.destroy
    respond_to do |format|
      format.html { redirect_to friends_url }
      format.json { head :no_content}
    end
  end

  private
    def find_friend
      @friend = Friend.find(params[:id])
    end

    def friend_params
      params.require(:friend).permit(:avatar, :name)
    end
end