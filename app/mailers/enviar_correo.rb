class EnviarCorreo < ActionMailer::Base
	default to: "hola@numedia.io"
	def email_contacto(contacto)
		@contacto = contacto
		mail(from: @contacto.email, subject: @contacto.comentario)
	end
end
