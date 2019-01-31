# Todo "Hello" => "He(2)lo"
class ShuffleEncodeString
    def initialize(string)
        @pair = [(0...string.size).to_a,string]
    end
    def code!
        tmp = [@pair[0].shuffle,@pair[1]]
        tmp[1] = tmp[1].chars.map.with_index(0){|x,y| @pair[1][tmp[0][y]]}.join
        @pair = tmp
        self

    end
    def encode!
        tmp = @pair.clone
        tmp[1] = tmp[1].chars.map.with_index(0){|x,y| @pair[1][@pair[0].index(y)]}.join
        @pair = [(0...tmp[1].size).to_a, tmp[1]]
        self
    end
    def inspect
        @pair
    end
end

obj = ShuffleEncodeString.new("Hello")
p obj
p obj.code!
p obj.encode!