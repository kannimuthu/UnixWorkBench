function guessgame(){
    correct_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Enter your number guessed"
        read  n
        if [ $n -lt $correct_ans ]
        then
            echo "your guess is Less then the actual number"
        elif [ $n -gt $correct_ans ]
        then
            echo "your guess is Greater then the actual number"
        else
            echo " Great,you are correct"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
guessgame