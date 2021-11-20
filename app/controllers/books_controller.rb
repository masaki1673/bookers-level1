class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end
  def create
    @book = Book.new(books_params)
    if @book.save
      flash[:notice]= 'successfully createbook!'
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end
  def edit
    @book = Book.find(params[:id])
  end
  def update
    @book = Book.find(params[:id])
    if @book.update(books_params)
      flash[:success] = 'successfully update!'
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end
  def show
    @book = Book.find(params[:id])
  end
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
     flash[:success] = 'successfully destroy!'
    redirect_to books_path 
  end
  private
  def books_params
    params.require(:book).permit(:title, :body)
  end
end