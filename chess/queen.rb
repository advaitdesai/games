require_relative 'piece'

module Chess
  class Queen < Piece
    #define the rules of all possible moves
    RULES = [[1,0],[0,1],[-1,0],[0,-1], [1,1],[1,-1],[-1,1],[-1,-1]]

    def rules
      RULES
    end

  end
end