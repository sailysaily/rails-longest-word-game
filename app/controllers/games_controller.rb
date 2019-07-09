class GamesController < ApplicationController
  def new
    @letters = (0...10).map { ('a'..'z').to_a[rand(26)] }

  end

  def score
    raise
  end

  private

  def has?
    words = @params[:name].split('')
    words.all? { |letter| params[:letters].include? letter }
  end

  def english(word)
  end
end
