class Welcome < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome.hello.subject
  #
  def hello
    @greeting = "Hi"

    mail to: "brownterry3236@gmail.com"
  end

  def contact_us(params)

  @message = params
    mail to: params[:email]

=begin
    @message = params
    mail to: params[:email]
    mail subject: 'contact us'
=end

  end
  def article_mail(user,articles )
    @user=user
    @article=articles
    mail to: user.email,
        bcc: "dave.jones@scc.spokane.edu"

  end
  def send_newsletter( articles, user )
    @username = user.email
    @article = articles

    mail to: user.email


  end


end
