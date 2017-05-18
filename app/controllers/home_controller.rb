class HomeController < ApplicationController
  def index
    @post = Post.all
  end
  
  def write
     @sowon = Post.new
     @sowon.title = params[:title]
     @sowon.content = params[:content]
     @sowon.save
     
     redirect_to '/'
  end
  

end

