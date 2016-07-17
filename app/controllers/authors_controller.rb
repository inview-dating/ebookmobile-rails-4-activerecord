class AuthorsController < ApplicationController
  def index
    @authors = Author.all

    render json: @authors
  end

  def create
    @author = Author.create(author_params)

    render json: @author, status: :ok
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name, :genre, :year_of_birth, :year_of_death)
  end
end
