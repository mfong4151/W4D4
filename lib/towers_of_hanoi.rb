
class TowersOfHanoi

    def initialize() #add arguments?

        @stacks = [[1],
                   [2],
                   [3]]
            
    end

    def play

        while !win?
            
            ele = self.stacks[0].shift
            self.stacks[1].unshift(ele)

        end

    end


    def win?
        self.stack[0].empty? && self.stack[1].empty?
    end

    

end