class PagesController < ApplicationController
  def home
  end

  def about
  end

  def hello
    if params[:name] == nil
      @name = "Nickname"
    else
      @name = params[:name]
    end
  end
end
