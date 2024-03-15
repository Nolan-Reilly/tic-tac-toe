# Board Class?

class Board
    attr_accessor :board

    def initialize()
        @isXTurn = true
        @board = [
            ["X", -1, -1],
            [-1, -1, -1],
            [-1, -1, -1]
        ]
    end

    # include some way of changing who's turn it is maybe not in this function though
    def modify_cell(cell)
        if (isXTurn)
            self.board[cell[0]][cell[1]] = "X"
        else
            self.board[cell[0]][cell[1]] = "X"
        end
    end

    def get_cell
        cell = self.select_cell # let user select a cell

        # check if the chosen position was already selected or not
        while (board[pos[0]][pos[1]] == "X" || board[pos[0]][pos[1]] == "O")
            # the cell was already chosen prompt the user for a new cell
            puts "Cell already chosen"
            pos = self.select_cell
        end

        modify_cell(cell)
    end

    def select_cell
        return_cell = [] # Variable to store chosen position
        
        # Get user's selected row
        print "Select row (0-2): "
        row = gets.chomp.to_i

        while (row < 0 || row > 2)
            print "Out of range!\nSelect row (0-2): "
            row = gets.chomp.to_i
        end

        # Get user's selected column
        print "Select column (0-2): "
        col = gets.chomp.to_i

        while (col < 0 || col > 2)
            print "Out of range!\nSelect column (0-2): "
            col = gets.chomp.to_i
        end

        # Append chosen row and col into return_cell array and return
        return_cell.append(row)
        return_cell.append(col)
        return_cell
    end

    # def playGame
    #     if isXTurn

    # end

end

board = Board.new
puts board.get_position

    