# ruby 22-quiz.rb

class Question
    attr_accessor :question, :answer
    def initialize(question, answer)
        @question = question
        @answer = answer
    end
    
end

def run_test(questions)
    answer = ""
    score = 0
    total_q = questions.length()

    for q in questions
        puts("\n" + q.question)
        print("Your Answer: ")
        answer = gets().chomp().downcase()

        if (answer == q.answer)
            puts("You're CORRECT!")
            score += 1
        else
            puts("You're WRONG!")
            puts("Correct answer: " + q.answer)
        end
    end

    puts("\nYou've scored: " + score.to_s + "/" + total_q.to_s)
end

q1 = "What color are apples?\n(a) Red\n(b) Purple\n(c) Orange"
q2 = "What color are bananas?\n(a) Pink\n(b) Red\n(c) Yellow"
q3 = "What color are pears?\n(a) Yellow\n(b) Green\n(c) Blue"

questions = [
    Question.new(q1, "a"),
    Question.new(q2, "c"),
    Question.new(q3, "b")
]

run_test(questions)