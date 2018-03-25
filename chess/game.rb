require_relative 'board'
require_relative 'errors/input_error'
require_relative 'knight'
require_relative 'queen'
require_relative 'rook'

module Chess
  class Game

    #chess game pieces
    PIECES = ['KNIGHT','ROOK','QUEEN']

    def self.possible_moves(piece, current_position)
      @board = Chess::Board.new
      piece = piece.upcase rescue nil
      current_position = current_position.downcase rescue nil
      raise(InputError,"Invalid arguments") unless valid_params?(piece,current_position)

      Chess.const_get(piece.capitalize).new.moves(current_position,@board)
    end

    def self.valid_params?(piece,position)
      return false unless  PIECES.include?(piece)
      @board.valid_position?(position)
    end
  end

end


options = {ARGV[0] => ARGV[1],ARGV[2] => ARGV[3]}
p Chess::Game.possible_moves(options["-piece"],options["-position"])

