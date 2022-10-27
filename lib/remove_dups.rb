class Array

    def uniq
        res = []
        self.each do |i|
            res << i if !res.include?(i)
        end
        res
    end

    def two_sum 
        pos = {}
        res = []

        (0...self.length).each do |i|
            if pos.has_key?(self[i]) 
                res << [pos[self[i]], i]
            end
            pos[-self[i]] = i 
        end

        res.sort
    end

    
end