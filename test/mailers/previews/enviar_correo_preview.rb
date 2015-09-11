# Preview all emails at http://localhost:3000/rails/mailers/enviar_correo
class EnviarCorreoPreview < ActionMailer::Preview
  def sample_mail_preview
    EnviarCorreo.email_contacto(Contacto.first)
  end
end
