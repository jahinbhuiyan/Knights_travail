class KnightPathFinder
    attr_reader :start_pos
    VALID_POS = [
        [-2, -1],
        [-2,  1],
        [-1, -2],
        [-1,  2],
        [ 1, -2],
        [ 1,  2],
        [ 2, -1],
        [ 2,  1]
      ]

      def self.valid_moves(pos)
        cur_x, cur_y = pos
        MOVES.select do |dx, dy|
          new_x, new_y = cur_x + dx, cur_y + dy
          new_x.between?(0, 7) && new_y.between?(0, 7)
        end
      end


end