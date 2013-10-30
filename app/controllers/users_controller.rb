class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :friends, :reverse_friends]

  # GET /users
  # GET /users.json
  def index
    #@users = User.all
     @users = User.paginate(:per_page => 5, :page => params[:page])
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @blogs = @user.blogs.paginate(:per_page => 5, :page => params[:page])
    @newblog=Blog.new

    # respond_to do |format|
    #   if @newblog.save
    #     format.html { redirect_to user_path(@user.id), notice: 'NewBlog was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @newblog }
    #   else
    #     format.html { redirect_to user_path(@user.id) }
    #     format.json { render json: @newblog.errors, status: :unprocessable_entity }
    #   end
    # end

  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
   
    #@user.hobbies=@Dancing+@Singing
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def friends
    @title = "#{current_user.first_name} #{current_user.last_name} is following"
    @user = User.find(params[:id])
    @users = @user.friend_users.paginate(page: params[:page])
    render 'show_friends'
  end

  def reverse_friends
    @title = "Friends following #{current_user.first_name}"
    @user = User.find(params[:id])
    @users = @user.reverse_friend_users.paginate(page: params[:page])
    render 'show_friends'
  end
  def home 
    @users = User.all
    # @blogs = Blog.paginate(:per_page => 5, :page => params[:page])
    @blogs = current_user.feed.paginate(page: params[:page])
  end
  def allblogs 
    @users = User.all
    @blogs = Blog.paginate(:per_page => 5, :page => params[:page])
    # @blogs = current_user.feed.paginate(page: params[:page])
  end
  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :date_of_birth, :gender, :address, :role, :hobbies,:dancing,:singing,:reading,:email,:encrypted_password)
    end
end
