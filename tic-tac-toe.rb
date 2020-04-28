class GameBoard
    attr_reader :board

    def initialize
        @board = {}
        self.create_board
    end

    def print_board
        self.board.each do |pos, cell|
            print "#{cell.print_cell}"
            if pos % 3 == 0
                print "\n"
                
            end
            
        end

    end

    protected
    def create_board
        count = 1
        (0..2).each do |x|
            (0..2).each do |y|
                @board[count] = Cell.new(x, y)
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

    def print_cell
        print " #{owned} "
    end
end



ttt = GameBoard.new
ttt.print_board