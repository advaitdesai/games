require_relative 'piece'

module Chess
  class Knight < Piece
    #define the rules of all possible moves
    RULES = [[-2,-1],[2,-1],[-2,1],[2,1],[-1,2],[1,2],[1,-2],[-1,-2]]

    def rules
      RULES
    end
  end
end