require_relative 'config/environment'

class App < Sinatra::Base
        get '/reversename/:name' do
                @name = params[:name]
                @name.reverse!
                "#{@name}"
        end

        get '/square/:number' do
                @number = params[:number].to_i
                @squared = @number ** 2
                "#{@number} squared is #{@squared}"
        end

        get '/say/:number/:phrase' do
                @all_phrases = []
                @number = params[:number].to_i
                @phrase = params[:phrase]
                @number.times do
                        @all_phrases << @phrase
                end

                "#{@all_phrases.join(" ")}"
        end

        get '/say/:word1/:word2/:word3/:word4/:word5' do
                @word1 = params[:word1]
                @word2 = params[:word2]
                @word3 = params[:word3]
                @word4 = params[:word4]
                @word5 = params[:word5]

                "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
        end

        get '/:operation/:number1/:number2' do
                @operation = params[:operation]
                @num1 = params[:number1].to_i
                @num2 = params[:number2].to_i

                if @operation == "add"
                        @total = @num1 + @num2
                        "#{@num1} plus #{@num2} is #{@total}"
                elsif@operation == "subtract"
                        @total = @num1 - @num2
                        "#{@num1} minus #{@num2} is #{@total}"
                elsif @operation == "multiply"
                        @total = @num1 * @num2
                        "#{@num1} times #{@num2} is #{@total}"
                elsif @operation == "divide"
                        @total = @num1 / @num2
                        "#{@num1} divided by #{@num2} is #{@total}"
                end
        end
end