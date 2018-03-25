require_relative 'board'
require_relative 'error/input_error'
require_relative 'knight'
require_relative 'queen'
require_relative 'rook'


module Chess
  class Game

    PIECES = ['KNIGHT','ROOK','QUEEN']

    def self.possible_moves(piece, current_position)
      @board = Chess::Board.new
      piece = piece.upcase rescue nil
      current_position = current_position.downcase rescue nil
      raise(InputError) unless valid_params?(piece,current_position)

      case piece
        when "KNIGHT"
          Knight.new.moves(current_position,@board)
        when "QUEEN"
          Queen.new.moves(current_position,@board)
        when "ROOK"
          Rook.new.moves(current_position,@board)
      end

    end

    def self.valid_params?(piece,position)
      return false unless  PIECES.include?(piece)
      @board.valid_position?(position)
    end

  end
end

