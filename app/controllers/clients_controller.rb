class ClientsController < ApplicationController
   def index
    @clients = Client.all
    render :index
  end

  def show
    @client = Client.find(params[:id])
    render :show
  end

  def create
    @client = Client.create(
      name: params["name"],
      phone_number: params[:phone_number],
      email: params["email"]
    )
    if @client.valid?
      render :show
    else
      render json: { errors: @client.errors.full_message }
    end
  end

  def update
    @client = Client.find(params[:id])

    @client.update(
      name: params["name"] || @client.name,
      phone_number: params[:phone_number] || @client.phone_number,
      email: params["email"] || @client.email
    )
    if @client.valid?
      render :show
    else
      render json: { errors: @client.errors.full_message }
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    render json: "client destroyed"
  end
end
