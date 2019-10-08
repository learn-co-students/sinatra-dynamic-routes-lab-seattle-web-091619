require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    str = ""
    @n = params[:number].to_i
    @phrase = params[:phrase]
    @n.times {str += "#{@phrase}\n"}
    str
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
    @opr = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    case @opr 
    when "add"
      (@n1+@n2).to_s
    when "multiply"
      (@n1*@n2).to_s
    when "divide"
      (@n1/@n2).to_s
    when "subtract"
      (@n2-@n1).to_s
    end
  end

end