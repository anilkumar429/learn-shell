# If we assign a name to a set of data it is called as a variable.

#Syntax: var=data
x=100
y=Hello

#Access a variable
#Syntax: $var or ${var}

echo x - $x
echo x - ${x}

# Variables are used to avoid repetition, Meaning if we have some data needs to be used in many places in the script, we declare that as a variable
# then we will access that variable. Any situation the data needs to be changed, we change in one place, it changes in all over places.

# Naming Convention for variables
# Alphabets, a-z, A-Z, numbers, underscore

# Variables Types
# Shell does not any variable type by default
# Every variable is a string. No int , long characters, booleans.

# Input Variables
#                       <Variable Input>
#   <Variable Input>        script          <Variable Input>

#                   Environment from CLI
#       LHS               script            RHS

echo z - ${z}

# LHS - z=20 bash 03-variables.sh
# Env Variable -  export z=30 ; bash 03-variables.sh
# RHS - bash 03-variables.sh 40

n=$1
echo n - ${n}

# RHS - Special Variables
# bash script 100 200 300
# $0 - script
# $1 - 100
# $2 - 200
# $3 - 300 ..... likewise we can go for $n
# $* - 100 200 300  - All Inputs
# $# - 3  - Number of Inputs



# So far the input is provided, either by hardcoding, or by user from cli.
# At times we need to declare the variables dynamically.

# Dynamic Variables
# 1. Command Substitution
# Syn: var=$(command)
DATE=$(date)
echo Today Date - ${DATE}
# 2. Arithmetic Substitution
# Syn: var=$((arithmetic expression))
ADD=$((100+200))
echo Add of 100 + 200 is ${ADD}