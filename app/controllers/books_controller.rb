class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  # POST /books
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path, notice: "book was successfully created."
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  # PATCH/PUT /books/1
  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to books_path, notice: "book was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id]).destroy!
    redirect_to books_path, :notice => "Book was successfully destroyed."
  end

  def book_params
    return params.require(:book).permit(:name, :tybe, :language, :section)
  end
end
