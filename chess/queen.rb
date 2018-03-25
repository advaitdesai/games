require_relative 'piece'

module Chess
  class Queen < Piece
    RULES = [[1,0],[0,1],[-1,0],[0,-1], [1,1],[1,-1],[-1,1],[-1,-1]]

    def rules
      RULES
    end

  end
end