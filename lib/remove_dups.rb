class Array

    def uniq
        res = []
        self.each do |i|
            res << i if !res.include?(i)
        end
        res
    end
end