def auto_bash x
    x.split("\n")
    .map{|x| 
        r = /.*countBy\(([0-9]+)\,([0-9]+)\)\, \[([0-9,]+)\].*/
        x.gsub(r){ 
            "output = run_shell args: ['#{$1}','#{$2}']; expect(output).to include('[#{$3}]')" 
        }
    }
    .join("\n") + "\n"
end

input = <<-FOO
Test.assertSimilar(countBy(1,10), [1,2,3,4,5,6,7,8,9,10], "Array does not match")
Test.assertSimilar(countBy(2,5), [2,4,6,8,10], "Array does not match")
Test.assertSimilar(countBy(3,7), [3,6,9,12,15,18,21], "Array does not match")
Test.assertSimilar(countBy(50,5), [50,100,150,200,250], "Array does not match")
Test.assertSimilar(countBy(100,6), [100,200,300,400,500,600], "Array does not match")
FOO
output = <<-FOO
output = run_shell args: ['1','10']; expect(output).to include('[1,2,3,4,5,6,7,8,9,10]')
output = run_shell args: ['2','5']; expect(output).to include('[2,4,6,8,10]')
output = run_shell args: ['3','7']; expect(output).to include('[3,6,9,12,15,18,21]')
output = run_shell args: ['50','5']; expect(output).to include('[50,100,150,200,250]')
output = run_shell args: ['100','6']; expect(output).to include('[100,200,300,400,500,600]')
FOO


describe "Static tests with Auto test" do
  it "Static tests" do
    Test.assert_equals(auto_bash(input), output)
  end
  it "Auto test" do
    150.times do
      a,b = rand(1..152), rand(1..152)
      a1,b1 = rand(1..152), rand(1..152)
      output = %Q{output = run_shell args: ['#{a}','#{b}']; expect(output).to include('[#{a.step(by: a).take(b).join(?,)}]')
output = run_shell args: ['#{a1}','#{b1}']; expect(output).to include('[#{a1.step(by: a1).take(b1).join(?,)}]')} + "\n"

input = %Q{Test.assertSimilar(countBy(#{a},#{b}), [#{a.step(by: a).take(b).join(?,)}], "Array does not match") 
Test.assertSimilar(countBy(#{a1},#{b1}), [#{a1.step(by: a1).take(b1).join(?,)}], "Array does not match")}
      Test.assert_equals(auto_bash(input), output)
    end
   end   
end

def auto_bash x
    # Make it green, then make it clean :) 
output = <<-FOO
output = run_shell args: ['1','10']; expect(output).to include('[1,2,3,4,5,6,7,8,9,10]')
output = run_shell args: ['2','5']; expect(output).to include('[2,4,6,8,10]')
FOO
end

input = <<-FOO
Test.assertSimilar(countBy(1,10), [1,2,3,4,5,6,7,8,9,10], "Array does not match")
Test.assertSimilar(countBy(2,5), [2,4,6,8,10], "Array does not match")
FOO
output = <<-FOO
output = run_shell args: ['1','10']; expect(output).to include('[1,2,3,4,5,6,7,8,9,10]')
output = run_shell args: ['2','5']; expect(output).to include('[2,4,6,8,10]')
FOO


describe "Solution" do
  it "should test for something" do
    Test.assert_equals(auto_bash(input), output)
  end
end

# https://www.codewars.com/kata/5d10c0334b67bb001d1bbc91/edit/ruby
# "assert.are.same({1,2}, solution.count_by(1,2))\nassert.are.same({1,2}, solution.count_by(1,1))\n"
# "assert.are.same({1,2}, solution.count_by(1,2))\nassert.are.same({1}, solution.count_by(1,1))\n"

def auto x
    x.split("\n")
    .map{|x| 
        r = /.*countBy\(([0-9,]+)\)\, \[([0-9,]+)\].*/
        x.gsub(r){ "assert.are.same({#{$2}}, solution.count_by(#{$1}))" }
    }
    .join("\n") + "\n"
end

input = <<-FOO
Test.assertSimilar(countBy(1,10), [1,2,3,4,5,6,7,8,9,10], "Array does not match")
Test.assertSimilar(countBy(2,5), [2,4,6,8,10], "Array does not match")
Test.assertSimilar(countBy(3,7), [3,6,9,12,15,18,21], "Array does not match")
Test.assertSimilar(countBy(50,5), [50,100,150,200,250], "Array does not match")
Test.assertSimilar(countBy(100,6), [100,200,300,400,500,600], "Array does not match")
FOO

output = <<-FOO
assert.are.same({1,2,3,4,5,6,7,8,9,10}, solution.count_by(1,10))
assert.are.same({2,4,6,8,10}, solution.count_by(2,5))
assert.are.same({3,6,9,12,15,18,21}, solution.count_by(3,7))
assert.are.same({50,100,150,200,250}, solution.count_by(50,5))
assert.are.same({100,200,300,400,500,600}, solution.count_by(100,6))
FOO

describe "Solution" do
    it "basic tests" do
      Test.assert_equals(auto(input), output)
    end
    it "auto test" do
      221.times do
        a,b = rand(1..222), rand(1..222)
        answer = a.step(by: a).take(b).join(?,)
        a1,b1 = rand(1..222), rand(1..222)
        answer1 = a1.step(by: a1).take(b1).join(?,)
        output = %Q[assert.are.same({#{answer}}, solution.count_by(#{a},#{b}))
assert.are.same({#{answer1}}, solution.count_by(#{a1},#{b1}))] + "\n"
  
  input = %Q{Test.assertSimilar(countBy(#{a},#{b}), [#{a.step(by: a).take(b).join(?,)}], "Array does not match") 
  Test.assertSimilar(countBy(#{a1},#{b1}), [#{a1.step(by: a1).take(b1).join(?,)}], "Array does not match")}
        Test.assert_equals(auto(input), output)
      end
     end   
  end