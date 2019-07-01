input = <<-FOO
Test.assertEquals(digPow(89, 1), 1)
Test.assertEquals(digPow(92, 1), -1)
Test.assertEquals(digPow(46288, 3), 51)
Test.assertEquals(digPow(114, 3), 9)
Test.assertEquals(digPow(46288, 5), -1)
Test.assertEquals(digPow(135, 1), 1)
Test.assertEquals(digPow(175, 1), 1)
Test.assertEquals(digPow(518, 1), 1)
Test.assertEquals(digPow(598, 1), 1)
Test.assertEquals(digPow(1306, 1), 1)
Test.assertEquals(digPow(2427, 1), 1)
Test.assertEquals(digPow(2646798, 1), 1)
Test.assertEquals(digPow(3456789, 1), -1)
Test.assertEquals(digPow(3456789, 5), -1)
Test.assertEquals(digPow(198, 1), 3)
Test.assertEquals(digPow(249, 1), 3)
Test.assertEquals(digPow(1377, 1), 2)
Test.assertEquals(digPow(1676, 1), 1)
Test.assertEquals(digPow(695, 2), 2)
Test.assertEquals(digPow(1878, 2), 19)
Test.assertEquals(digPow(7388, 2), 5)
Test.assertEquals(digPow(47016, 2), 1)
Test.assertEquals(digPow(542186, 2), 1)
Test.assertEquals(digPow(261, 3), 5)
Test.assertEquals(digPow(1385, 3), 35)
Test.assertEquals(digPow(2697, 3), 66)
Test.assertEquals(digPow(6376, 3), 10)
Test.assertEquals(digPow(6714, 3), 1)
Test.assertEquals(digPow(63760, 3), 1)
Test.assertEquals(digPow(63761, 3), 1)
Test.assertEquals(digPow(132921, 3), 4)
Test.assertEquals(digPow(10383, 6), 12933)
FOO

@r = /.*digPow\((\d+)\,\s+(\d+)\)\,\s+(-*\d+).*/
def auto x
    x.split("\n")
    .map{|x| 
        r = @r
        x.gsub(r){ "assert.are.same(#{$3}, solution.dig_pow(#{$1}, #{$2}))" }
    }
    .join("\n") + "\n"
end
def auto_s x
    x.split("\n")
    .map{|x| 
        r = @r
        x.gsub(r){ "assert.are.same(s(#{$1}, #{$2}), solution.dig_pow(#{$1}, #{$2}))" }
    }
    .join("\n") + "\n"
end
def auto_ruby x
    a = x.split("\n")
    .map{|x| 
        r = @r
        z = x.match(@r)
        [z[1],z[2]]
    }
    first = a.map{|x,y| x[/\d+/].to_i}.uniq.sort
    second = a.map{|x,y| y[/\d+/].to_i}.uniq.sort
    "first #{first}, second #{second}}"
    
end




puts auto_ruby(input)
p "--------------------------------------------"
puts auto(input)
p "--------------------------------------------"
puts auto_s(input)

# from 80 till 1900

