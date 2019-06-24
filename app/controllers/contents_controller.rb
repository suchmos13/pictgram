class ContentsController < ApplicationController
  
    
    def new
      @content = Content.new
    end
  
    def create
    @content = current_user.contents.new
  
      if @content.save
        redirect_to topics_path, success: '投稿に成功しました'
      else
        flash.now[:danger]="投稿に失敗しました"
        render :new
      end 
    end 


  
end

