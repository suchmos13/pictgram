class ContentsController < ApplicationController
  

  def index
    @contents_topics = current_user.contents_topics 
  end
  
  
    
    def new
      @content = Content.new
      @content.topic_id = params[:topic_id]
      @content.user_id = session[:user_id]
      
    end
  
    def create
      #binding.pry
    @content = current_user.contents.new(content_params)
  
      if @content.save
        redirect_to topics_path, success: '投稿に成功しました'
      else
        flash.now[:danger]="投稿に失敗しました"
        render :new
      end 
    end 


  private
    def content_params
      params.require(:content).permit(:user_id, :topic_id, :comment)
    end
    
      
    



  
end

