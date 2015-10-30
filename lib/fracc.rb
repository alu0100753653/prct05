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
	
	def simplificar(num,den)
		aux=gcd(num,den)
		num=num/aux
		den=den/aux
		f=Fracc.new(num,den)
		return f
	end
	#SUMA
	def +(numero)
		aux=mcm(@den,numero.den)
		num1=(aux/@den)*@num
		num2=(aux/numero.den)*numero.num
		num1=num1+num2
		s=simplificar(num1,aux)
		Fracc.new(s.num,s.den)
	end
	
	#RESTA
	def -(numero)
		aux=mcm(@den,numero.den)
		num1=(aux/@den)*@num
		num2=(aux/numero.den)*numero.num
		num1=num1-num2
		s=simplificar(num1,aux)
		Fracc.new(s.num,s.den)
	end
	
	#MULTIPLICACION
	def *(numero)
		num1=@num * numero.num
		num2=@den * numero.den
		s=simplificar(num1,num2)
		Fracc.new(s.num,s.den)
	end
	#DIVISION
	def /(numero)
		num1=@num * numero.den
		num2=@den * numero.num
		s=simplificar(num1,num2)
		Fracc.new(s.num,s.den)
	end
end