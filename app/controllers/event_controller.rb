class EventController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
  end

  def show
  @event = Event.find(params[:id])
  end


  def create

    @event = Event.create('title' => params[:title],
      'description' => params[:description],
     'duration' => params[:duration],
     'price' => params[:price],
     'location' => params[:location],
     'start_date' => params[:start_date],
      'duration' => params[:duration],
      'user_id' => current_user.id)
      if @event.save # essaie de sauvegarder en base
            # si ça marche, il redirige vers la page d'index du site
            flash[:success] = "Event bien créé !"
            redirect_to event_index_path
           else
            # sinon, il render la view new (qui est celle sur laquelle on est déjà)
             redirect_to new_event_path
      end

    end


      def new
      @event = Event.new
      end

end
