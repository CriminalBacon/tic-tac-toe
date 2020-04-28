class GameBoard
    @@board = {}

    def initialize
        self.create_board
    end

    protected
    def create_board
        count = 1
        (0..2).each do |x|
            (0..2).each do |y|
                @@board[count] = Cell.new(x, y)
                count += 1

            end
        end

    end
end



class Cell

    attr_reader :x, :y
    attr_accessor :owned

    def initialize(x, y, owned='#')
        @x = x
        @y = y
        @owned = owned
    end

    def print
        puts " #{owned} "
    end
end



board = GameBoard.new