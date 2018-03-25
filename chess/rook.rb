require_relative 'piece'

module Chess
  class Rook < Piece
    #define the rules of all possible moves
    RULES = [[1,0],[-1,0],[0,1],[0,-1]]

    def rules
      RULES
    end
  end
end