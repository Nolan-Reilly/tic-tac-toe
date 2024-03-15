# Board Class?

class Board
    attr_accessor :baordCells

    def initialize()
        @isXTurn = true
        @boardCells = [
            [-1, -1, -1],
            [-1, -1, -1],
            [-1, -1, -1]
        ]
    end

    def choosePosition
        position = []
        
        print "Select row (1-3): "
        row = gets.chomp.to_i

        while (row < 1 || row > 3)
            print "Out of range!\nSelect row (1-3): "
            row = gets.chomp.to_i
        end

        print "Select column (1-3): "
        col = gets.chomp.to_i

        while (col < 1 || col > 3)
            print "Out of range!\nSelect column (1-3): "
            col = gets.chomp.to_i
        end

        position.append(row)
        position.append(col)

        p position
    end

    # def playGame
    #     if isXTurn

    # end

end

board = Board.new
board.choosePosition

    