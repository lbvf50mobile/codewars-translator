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