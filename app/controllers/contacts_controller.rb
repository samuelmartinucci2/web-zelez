class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Agradecemos o contato, estaremos respondendo em breve!'
      render :new
    else
      flash.now[:error] = 'Falha ao enviar a mensagem.'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
