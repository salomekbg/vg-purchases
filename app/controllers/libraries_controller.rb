class LibrariesController < ApplicationController
  before_action :require_login

  def new
    @library = Library.new
    @platforms = Platform.all.order(:name)
    @sources = Source.all.order(:name)
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
    @user = User.find(current_user.id)
  end

  def edit
    @library = Library.find(params[:id])
    @platforms = Platform.all.order(:name)
    @sources = Source.all.order(:name)
  end

  def update
    @library = Library.find(params[:id])
    @user = User.find(current_user.id)
    if @library.update(library_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @library = Library.find(params[:id])
    @library.delete
    @user = User.find(current_user.id)
    redirect_to user_path(@user)
  end

  private

  def library_params
    params.require(:library).permit(:platform_id, :source_id, :status, :personal_rating, :hours_played, :notes).merge(user_id: current_user.id, game_id: params[:game_id])
  end
end
