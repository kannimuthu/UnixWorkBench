function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter your number guessed"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "your guess is Less then the actual number"
        elif [ $number -gt $true_ans ]
        then
            echo "your guess is Greater then the actual number"
        else
            echo " congratulation,you are correct"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
guess