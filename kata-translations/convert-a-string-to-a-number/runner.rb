if( ARGV.include?('--help'))
    puts "Lua code runner. for CodeWars.com kata\n\n"
    puts '--help this message'
    puts '--sample_test run sample_test_cases.lua'
    puts '--test run test_cases.lua'
    puts '--solution use solution.lua to run on tests'
    puts "--solution_setup use solution_setup.lua to run on tests\n\n"
    exit
end

puts "Lua code runner. for CodeWars.com kata\n\n"
puts "--help for help\n\n"

# Set default
test_file = 'test_cases.lua'
solution_file = 'solution.lua'

{
    '--sample_test' => {file: 'sample_test_cases.lua', var:'test_file'},
    '--test' => {file: 'test_cases.lua', var: 'test_file'},
    '---solution' => {file: 'solution.lua', var:'solution_file'},
    '--solution_setup' => {file: 'solution_setup.lua', var: 'solution_file'},
}.map{|(key,hash)|
    if(ARGV.include?(key))
        eval("#{hash[:var]}='#{hash[:file]}'")
    end
}

p solution_file

`[ "$(ls -A /tmp)" ] && rm src/* || echo "Empty"`
`cp #{solution_file} src/solution.lua`
p code="busted.bat #{test_file}"
exec("#{code}")
puts "This dose not PRINTed because of exec."
