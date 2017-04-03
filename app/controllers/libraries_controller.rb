class LibrariesController < ApplicationController
  before_action :require_login

  def new
    @library = Library.new
    # @games = Game.all
    @platforms = Platform.all
    @sources = Source.all
  end

  def create
    @library = Library.new(library_params)
    @user = User.find(current_user.id)
    if @library.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @library = Library.find(params[:id])
  end

  def edit
    @library = Library.find(params[:id])
  end

  def update
  end

  def destroy
    @library = Library.find(params[:id])
    @library.delete
    @libraries = Library.all
    render "index"
  end

  private

  def library_params
    params.require(:library).permit(:platform_id, :source_id, :status, :personal_rating, :hours_played, :notes).merge(user_id: current_user.id, game_id: params[:game_id])
  end
end
