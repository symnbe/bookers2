class UsersController < ApplicationController
  def index
    @user - User.all
    @book = Book.new
    @books = Book.all
  end

  def show
  end

  def edit
  end

  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end


  private
  def users_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
