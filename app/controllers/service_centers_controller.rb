require 'open-uri'
require 'json'

class ServiceCentersController < ApplicationController

  def index

  end

  def show
    @service_center = ServiceCenter.find(params[:id])
  end

  def new
    @service_center = ServiceCenter.new
  end

  def create
    @service_center = ServiceCenter.new
    @service_center.name = params[:name]
    @service_center.latitude = params[:latitude]
    @service_center.longitude = params[:longitude]
    @service_center.street = params[:street]
    @service_center.city = params[:city]
    @service_center.state = params[:state]
    @service_center.zip = params[:zip]
    @service_center.phone = params[:phone]
    @service_center.organization = params[:organization]

    if @service_center.save
      redirect_to "/service_centers", :notice => "Service center created successfully."
    else
      render 'new'
    end
  end

  def edit
    @service_center = ServiceCenter.find(params[:id])
  end

  def update
    @service_center = ServiceCenter.find(params[:id])

    @service_center.name = params[:name]
    @service_center.latitude = params[:latitude]
    @service_center.longitude = params[:longitude]
    @service_center.street = params[:street]
    @service_center.city = params[:city]
    @service_center.state = params[:state]
    @service_center.zip = params[:zip]
    @service_center.phone = params[:phone]
    @service_center.organization = params[:organization]

    if @service_center.save
      redirect_to "/service_centers", :notice => "Service center updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @service_center = ServiceCenter.find(params[:id])

    @service_center.destroy

    redirect_to "/service_centers", :notice => "Service center deleted."
  end
end
