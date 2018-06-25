class BoardsController < ApplicationController
    def index
        @boards = Board.all
    end
    
    def new
    end
    
    def create
        @board = Board.new(set_board)
        @board.save
        redirect_to "/"
    end
    
    def edit
        @board=Board.find(params[:id])
    end
    
    def update
        @board = Board.find(params[:id])
        @board.update(set_board)
        redirect_to "/board/show/#{params[:id]}"
    end
    
    def destroy
         @board = Board.find(params[:id])
         @board.destroy
         redirect_to '/'
    end
    
    
    def show
        @board = Board.find(params[:id])
    end
    
   def set_board
    {title: params[:title], contents: params[:contents],user_ip: request.ip} 
   end
end
