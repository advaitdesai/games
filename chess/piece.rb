module Chess
  class Piece

    def moves(current_position,board)
      rules.inject([]) do |collection, rl|
        position = board.neighbour_position(current_position,rl[0],rl[1])
        collection << position if position
        collection
      end.join(',')
    end

    #Every subclass of Piece should implement this method
    def rules
      raise('Implement rules method ')
    end
  end
end