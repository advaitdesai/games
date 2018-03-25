module Chess
  class Piece

    def moves(current_position,board)
      raise("Invalid current position") unless board.valid_position?(current_position)
      moves_list = []
      rules.each do |rl|
        position = board.neighbour_position(current_position,rl[0],rl[1])
        moves_list << position if position
      end
      moves_list.join(',')
    end

    def rules

    end
  end
end