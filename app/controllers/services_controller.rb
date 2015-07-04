class ServicesController < ApplicationController

	def index
		@services= Service.all #services is instance variable.Use to access globally
	end

	def show
		@service = Service.find(params[:id])

	end

	def new
		@service= Service.new
	end

	def create
		@service = Service.new(service_params)
    	@service.save
    	redirect_to service_path(@service)
	end

    def service_params
  		params.require(:service).permit(:name, :description, :min_price, :max_price)
	end

end
