class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render :index
  end

  def show
    @photo = Photo.find(params[:id])
    render :show
  end

  def create
    @photo = Photo.create(
      name: params["name"],
      width: params[:width],
      height: params[:height],
      client_id: params[:client_id]
    )
    if @photo.valid?
      render :show
    else
      render json: { errors: @photo.error.full_message }
    end
  end

  def update
    @photo = Photo.find(params[:id])

    @photo.update(
      name: params["name"] || @photo.name,
      width: params[:width] || @photo.width,
      height: params[:height] || @photo.height,
      client_id: params[:client_id] || @photo.client_id
    )
    if @photo.valid?
      render :show
    else
      render json: { errors: @photo.error.full_message }
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    render json: "photo destroyed"
  end
end
