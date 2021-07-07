class ArchivesController < ApplicationController
  before_action :set_archive, only: [:show, :edit, :update, :destroy]

  def index
    @archives = Archive.all
  end

  def show
    @archive = Archive.find(params[:id])
  end

  def new
    @archive = Archive.new
  end

  def create
    @archive = Archive.new(archive_params)
    @archive.user = current_user
      if @archive.save
        redirect_to archives_new_path(@archive.title)
      else
        render :new
      end
  end

  def update
    @archive = Archive.find(params[:id])
    @archive.update(archive_params)
  end

  def edit
    @archive = Archive.find(params[:id])
  end

  def destroy
    @archive = Archive.find(params[:id])
    @archive.destroy
    redirect_to archives_path
  end


  private

  def archive_params
    params.require(:archive).permit(:title, :category)
  end

  def set_archive
    @archive = Archive.find(params[:id])
  end
end
