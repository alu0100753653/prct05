#Fracc Class

class Fracc
	attr_reader :num, :den
	attr_accessor :num, :den
	def initialize(num,den)
		@num, @den = num,den
	end
	
	def to_s
		"(#{@num},#{@den})"
	end
	
	def gcd(u, v)
		 u, v = u.abs, v.abs
  		while v != 0
    		u, v = v, u % v
  		end
  		u
	end
	
	def mcm(n,d)
		aux=gcd(n,d)
		return (n/aux)*d
	end
	
	#SUMA
	def +(numero)
		aux=mcm(@den,numero.den)
		num1=(aux/@den)*@num
		num2=(aux/numero.den)*numero.num
		Fracc.new(num1+num2,aux)
	end
	
	#RESTA
	def -(numero)
		aux=mcm(@den,numero.den)
		num1=(aux/@den)*@num
		num2=(aux/numero.den)*numero.num
		Fracc.new(num1-num2,aux)
	end
	
	#MULTIPLICACION
	def *(numero)
		Fracc.new(@num * numero.num, @den * numero.den)
	end
	#DIVISION
	def /(numero)
		Fracc.new(@num * numero.den, @den * numero.num)
	end
end