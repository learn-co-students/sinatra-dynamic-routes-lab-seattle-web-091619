require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do

    @name = params[:name].reverse
    "#{@name}"
    
    end
    get '/square/:number' do
    
    @name = params[:number].to_i**2
    "#{@name}"
    
    end

    get '/say/:number/:phrase' do
      arr = []
      @x = params[:number].to_i
      
      @x.times do
       arr <<  "#{params[:phrase]}"
      end
      arr.join(" ")
      "#{arr.join(' ')}"
    end



    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @w1 = params[:word1]
      @w2 = params[:word2]
      @w3 = params[:word3]
      @w4 = params[:word4]
      @w5 = params[:word5]

      @a = [@w1,@w2,@w3,@w4,@w5].join(" ")

      @a + "."

    end



    get '/:operation/:number1/:number2' do
    

      @name3 = params[:operation].downcase

      @name1 = params[:number1].to_i
      @name2 = params[:number2].to_i


      if @name3 == "multiply"
       a = "#{@name1*@name2}"
      end
      if @name3 == "add"
        a =  "#{@name1+@name2}"
      end
      if @name3 == "subtract"
        a = "#{@name1-@name2}"
        end
        if @name3 == "divide"
          a =  "#{@name1.to_f/@name2}"
          end
            a
      end
  

end