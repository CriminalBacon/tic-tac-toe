class GameBoard

    def initialize

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



test_cell = Cell.new(1, 2)
#test_cell.owned = "X"
puts "#{test_cell.x} and #{test_cell.y} owned by #{test_cell.owned}"
test_cell.print