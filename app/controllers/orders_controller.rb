class OrdersController < ApplicationController
	def new
		@order = Order.new
		@order.service_id = params[:service_id]
		@order.date = Time.now
	end

	def create
		@order = Order.new(order_params)
		@order.save
		redirect_to services_path(@service)
	end

	def order_params
		params.require(:order).permit(:name, :address, :date, :email, :phone_number, :service_id)
	end
end
