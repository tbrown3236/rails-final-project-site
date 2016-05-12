class PageController < ApplicationController
before_action :set_products, only:[:send_mail]

  def index
  end

  def about_us
  end

  def send_mail
  Welcome.hello.deliver_now
    redirect_to action: "index"
  end

  def contact_us
    is_valid = true
    @first_name = params[:first_name] # params["first_name"]
    unless @first_name
      flash.now[:error] = "First Name is Required".html_safe
      is_valid = false
    end

    @last_name = params[:last_name]
    unless @last_name
      flash.now[:error] = "#{flash.now[:error]} <br/>last name is required".html_safe
      is_valid = false
    end
    @email = params[:email]
    unless @email
      flash.now[:error] = "#{flash.now[:error]} <br/>email is required".html_safe
      is_valid = false
    end
    @newsletter = params[:newsletter]
    @magazine = params[:magazine]
    @products = params[:product]
    @products = Product.all

    if is_valid
      Welcome.contact_us(params).deliver_now
    end
  end

  def products

  end

  def newsletter
    @newsletters = Newsletter.all
    respond_to do |format|
      format.html
      format.json { render json: @newsletters}
      format.xml { render xml: @newsletters}
    end
  end

  def blog
  end

  def calendar


    @month = params['month'].to_i
    @year = params['year'].to_i
    @first_day_of_month = params[:first_day_of_month].to_i



   # @days_in_month = Time.days_in_month(@month)
   # @first_day_of_month = @display_time.strftime("%w").to_i
  end

  def articles
  end

  def login
  end
end
