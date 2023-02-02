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

      def initialize(pos)
        unless (0...8).cover?(pos[0]) && (0...8).cover?(pos[1])
          raise "Not a valid position"
        end
      
        @root_node = PolyTreeNode.new(pos)
        @valid_pos = []
        @considered_pos = [pos]
      end

    #   def new_move_positions(pos)
    #     valid_moves = KnightPathFinder.valid_moves(pos)
    #     new_valid_positions = valid_moves.reject { |move| @considered_pos.include?(move) }
    #     @valid_pos += new_valid_positions
    #     @considered_pos += new_valid_positions
    #   end

    def new_move_positions(pos)
        new_moves = KnightPathFinder.valid_moves(pos).reject do |move|
          @considered_positions.include?(move)
        end
        @valid_positions += new_moves
        @considered_positions += new_moves
      end

end