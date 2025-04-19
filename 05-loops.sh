# IF we have to iterate some commands again and again then we go for loops

# for     - If we have inputs
# while   - If we have expressions

# expressions discussed on if condition,. same expressions here for while loop

# syntax:

#while [ expression ]; do
#  commands
#done
#

x=10
while [ $x -gt 0 ]; do
  echo Loop in while command
  x=$(($x-1))
done

for fruit in apple banana orange ; do
  echo Fruit Name - $fruit
done

for username in steve john raju; do
  echo Adding User - $username
done