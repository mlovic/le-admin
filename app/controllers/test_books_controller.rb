class TestBooksController < ApplicationController
  before_action :set_test_book, only: [:show, :edit, :update, :destroy]

  # GET /test_books
  # GET /test_books.json
  def index
    @test_books = TestBook.all
  end

  # GET /test_books/1
  # GET /test_books/1.json
  def show
  end

  # GET /test_books/new
  def new
    @test_book = TestBook.new
  end

  # GET /test_books/1/edit
  def edit
  end

  # POST /test_books
  # POST /test_books.json
  def create
    @test_book = TestBook.new(test_book_params)

    respond_to do |format|
      if @test_book.save
        format.html { redirect_to @test_book, notice: 'Test book was successfully created.' }
        format.json { render :show, status: :created, location: @test_book }
      else
        format.html { render :new }
        format.json { render json: @test_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_books/1
  # PATCH/PUT /test_books/1.json
  def update
    respond_to do |format|
      if @test_book.update(test_book_params)
        format.html { redirect_to @test_book, notice: 'Test book was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_book }
      else
        format.html { render :edit }
        format.json { render json: @test_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_books/1
  # DELETE /test_books/1.json
  def destroy
    @test_book.destroy
    respond_to do |format|
      format.html { redirect_to test_books_url, notice: 'Test book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_book
      @test_book = TestBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_book_params
      params.require(:test_book).permit(:level, :name, :year, :number)
    end
end
