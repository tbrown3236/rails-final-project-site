class SayController < ApplicationController
  def hello
    # params hash
    @name = :params["name"]
    @age = :params["age"]
    @time = Time.now
    @count = 10
    @bill = params[:bill].to_f
    @percent = params[:percent].to_f
    @tip = @bill * @percent
  end
end