require_relative 'piece'

module Chess
  class Knight < Piece

    RULES = [[-2,-1],[2,-1],[-2,1],[2,1],[-1,2],[1,2],[1,-2],[-1,-2]]

    def moves(current_position,board)
      raise("Invalid current position") unless board.valid_position?(current_position)
      moves_list = []
      RULES.each do |rl|
        position = board.neighbour_position(current_position,rl[0],rl[1])
        moves_list << position if position
      end
      moves_list.join(',')
    end

  end
end