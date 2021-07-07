require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name1 = params[:name]
    @name1.reverse!
  end

  get '/square/:number' do
    @num1 = params[:number].to_i
    "#{(@num1**2)}"
  end

  get '/say/:number/:phrase' do
    @all_phrases = []
    @num1 = params[:number].to_i
    @phrase1 = params[:phrase]
    @num1.times do
      @all_phrases << @phrase1
    end
    @all_phrases.join(" ")


  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @operations = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operations == "add"
      (@num1)+(@num2)
    elsif @operations == "subtract"
      (@num2)-(@num1)
    elsif @operations == "multiply"
      (@num1)*(@num2)
    elsif @operations == "divide"
      (@num1)/(@num2)
    end.to_s
  end
end
