class DecksController < ApplicationController

  def index
   @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])

  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new
    @deck.name = params[:deck][:name]

    @deck.save
    redirect_to "/decks"
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def update
    @deck = Deck.find(params[:id])
    @deck.name = params[:deck][:name]
    @deck.save
    redirect_to "/decks"
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
    redirect_to "/decks"

  end


end