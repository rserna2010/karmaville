class UsersController < ApplicationController


  def index
    @page = params[:pages].to_i
    @user_count = User.count/50 

    if  @page == 0 || @page < 0 
      redirect_to '/?pages=1'
    elsif @page >  @user_count
      redirect_to '/?pages=' + "#{@user_count}" 
      @user_count
    elsif @page
      @users = User.by_karma.page(@page)
    else 
      @users = User.by_karma.page(1)
    end
  end

end
