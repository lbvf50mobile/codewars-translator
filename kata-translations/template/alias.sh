# File with set of aliases to add by source alias.sh

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

# just_tests - runs solution on test
echo "add ${green}just_tests${reset} function.(just_tests - runs solution on test)"
just_tests(){
 echo "Runs ${green}solution.lua${reset} on ${green}test_cases.lua${reset}"
 echo "$green --solution --test $reset"
 ruby runner.rb --solution --test
}
# sample_tests - runs setup on sample
echo "add ${red}sample_tests${reset} function.(sample_tests - runs setup on sample)"
sample_tests(){
 echo "Runs ${red}solution_setup.lua${reset} on ${red}sample_test_cases.lua${reset}"
 echo "$green --solution_setup --sample_test $reset"
 ruby runner.rb --solution_setup --sample_test
}
# full_test - runs full tests
echo "add ${green}full_test${reset} function.(full_test - runs full test)"
full_test(){
 echo "Runs ${green}solution.lua${reset} on ${green}test_cases.lua${reset}"
 echo "Runs ${green}solution.lua${reset} on ${red}sample_test_cases.lua${reset}"   
 echo "Runs ${red}solution_setup.lua${reset} on ${red}sample_test_cases.lua${reset}"
 bash test_runner.sh
}
# autot - runs auto.rb with static test translation
