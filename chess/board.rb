
module Chess
  class Board
    CHAR_MAP = {'a'=> 1,'b'=> 2,'c'=> 3,'d'=> 4,'e'=> 5,'f'=> 6,'g'=> 7,'h'=> 8}
    MAX_SQUARE = 8
    MIN_SQUARE = 1


    def valid_position?(position)
      return false if position.length != 2
      return false unless horizontal_position(position)
      valid_move?(horizontal_position(position),vertical_position(position))
    end

    def neighbour_position(current_position,horizontal,vertical)
      hp = horizontal_position(current_position) + horizontal
      vp = vertical_position(current_position) + vertical
      valid_move?(hp,vp) ? (horizontal_char(hp) + vp.to_s) : nil
    end

    private

    def valid_move?(hp,vp)
      hp >= MIN_SQUARE && hp <= MAX_SQUARE && vp >= MIN_SQUARE && vp <= MAX_SQUARE
    end

    def horizontal_position(position)
      CHAR_MAP[position[0]]
    end

    def vertical_position(position)
      position[1].to_i
    end

    def horizontal_char(position)
      CHAR_MAP.invert[position]
    end

  end
end