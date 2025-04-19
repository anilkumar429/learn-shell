# if condition
# case condition
# if condition is the widely used one in shell. Its alternative case command have basic functionality, Hence it is not that much preferred.

# If condition can be made in three forms
# 1. Simple IF

#syntax:
#if [ expression ]; then
#  commands
#fi

# commands are going to execute only if expression is true

# 2. IF-Else

#syntax:
#if [ expression ]; then
#  commands-x
#else
#  commands-y
#fi

# commands-x will run if expression is true, else it will run commands-y

# 3. Else-IF

#syntax:
#if [ expression1 ]; then
#  commands
#elif [ expression2 ]; then
#  commands
#...... can go for expression-n
#else
#  commands
#fi

# which ever expression is true, its associated commands will be executed.


##################
# IN every place we are seeing expression is been used.
# Following expressions are used.

# 1. Number expressions
# Operators: -eq, -ne, -ge, -gt, -lt, -le

# [ 1 -eq 1 ] - THis is true or false will be validated by shell

# 2. String expressions
# Operators: ==, !=, -z , -n
# [ abc == xyz ]
# [ -z "$x" ] - True if x is empty
# [ -n "$x" ] - True if x is not empty

# 3. File expressions
# Operators: -e
# [ -e new.txt ] -> True if new.txt exists
# https://www.tutorialspoint.com/unix/unix-file-operators.htm

amount=$1
currency=$2

if [ "$currency" == usd ]; then
  inr=$(($1*85))
  echo USD currency in INR - $inr
fi

if [ "$currency" == aud ]; then
  inr=$(($1*55))
  echo AUD currency in INR - $inr
fi

## In Expressions always use double quotes for variables. For numbers & strings it is not necessary.

# Expressions can be logical combined as well.
# -a - AND
# -o - OR

# exp1        exp2          AND         OR
# true        true          true      true
# true        false         false     true
# false       true          false     true
# false       false         false     false