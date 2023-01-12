
require 'csv'

obj = CSV.read("problems.csv")

num = 0
for i in (0..obj.size-1)
    puts "Question #{i+1}: #{obj[i][0]}"
    print "Enter Yout Answer: " 
    user_input = gets
    user_input =  user_input.delete "\n"
    user_input =  user_input.delete " "

    if user_input == obj[i][1]
        puts "\t\t\t ==> Correct"
        num += 1
    else
        puts "\t\t\t ==> False"
    end
end


puts "\tTotal Question: #{obj.size}\n\tCorrect Answers: #{num}\n\tIncorrect Answers: #{obj.size - num}\n\t\t - : Your Result : - \n\t\tMarks: #{num}/#{obj.size}\n\t\tPercentage: #{(Float(num)/Float(obj.size)) * 100}%\n\n"
