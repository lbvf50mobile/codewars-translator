red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "$green --solution --test $reset"
ruby runner.rb --solution --test

echo "$green --solution --sample_test $reset"
ruby runner.rb --solution --sample_test

echo "$green --solution_setup --sample_test $reset"
ruby runner.rb --solution_setup --sample_test
