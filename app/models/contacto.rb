class Contacto < MailForm::Base
	attribute	:nombre,	:validate	=> true
	attribute	:email,		:validate	=> /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute	:mensaje,	:validate	=> true
	attribute	:nickname,	:captcha	=> true

	def headers 
		{
			:subject	=> "Nuevo Email",
			:to			=> "hola@numedia.io",
			:from		=> %("#{nombre} <#{email}">)
		}
	end
end