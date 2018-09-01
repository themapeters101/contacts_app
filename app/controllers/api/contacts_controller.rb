class Api::ContactsController < ApplicationController
  
  def index
    @contact = Contact.first
    render 'index.json.jbuilder'
  end

  def create
    @contact = Contact.new(
                            first_name: params[:first_name]
                            last_name: params[:last_name]
                            email: params[:email]
                            phone_number: params[:phone_number]
                            )
    @contact.save
    render 'show.json.jbuilder'
  end

  def show
    @contact = Contact.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @product = Contact.find(params[:id])

    @product.first_name = params[:first_name] || @product.first_name
    @products.last_name =params[:last_name] || @product.last_name
    @products.email = params[:email] || @product.email
    @product.phone_number = params[:phone_number] || @product.phone_number

    @product.save
    render 'show.json.jbuilder'
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "Contact successfully deleted."}
  end
end
