class ContactosController < ApplicationController
	def new
		@contacto = Contacto.new
	end

	def create
		@contacto = Contacto.new(params[:contacto])
		@contacto.request = request
		if @contacto.deliver
			flash.now[:error] = nil
		else
			flash.now[:error] = "No se pudo enviar el mensaje :("
			render :new
		end
	end
end