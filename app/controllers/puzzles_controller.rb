class PuzzlesController < ApplicationController
  def create
    @puzzle = Puzzle.new(puzzle_params)
    if @puzzle.save
      redirect_to action: "index"
    else
      render :new
    end
  end

  def new
    @puzzle = Puzzle.new
  end

  def show
    @puzzle = Puzzle.find(params[:id])
  end

  def index
    @puzzles = Puzzle.all
  end

  def edit
    @puzzle = Puzzle.find(params[:id])
  end

  def update
    @puzzle = Puzzle.find(params[:id])

    if @puzzle.update(puzzle_params)
      redirect_to action: "index", notice: "Puzzle updated"
    else
      render :edit
    end
  end

  def destroy
    @puzzle = Puzzle.find(params[:id])
    @puzzle.destroy

    redirect_to action: "index", notice: "Puzzle deleted"
  end

  def puzzle_params
    params.require(:puzzle).permit(:title, :author, :rows, :cols, :fill, :template)
  end
end
