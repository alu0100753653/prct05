#Fracc Class

class Fracc
	attr_reader :num, :den
	def initialize(num,den)
		@num=num
		@den=den
	end
	
	def to_s
		"(#{@num}, #{@den})"
	end
	
	def gcd(n, d)
		n1 = abs(n)
		n2 = abs(d)
		gcd = 1
		k = 1
		while k <= n1 and k <= n2
			if n1 % k == 0 and n2 % k == 0
				gcd = k
			end
			k += 1
			return gcd
		end
	end
	
	def mcm(n,d)
		aux=gcd(n,d)
		return (n/aux)*d
	end
	
	
	#SUMA
	def +(numero)
		aux=mcm(@den,numero.den)
		@num=(aux/@den)*@num
		numero.num=(aux/numero.den)*numero.num
		Fracc.new(@num+numero.num,aux)
	end
	
	#RESTA
	def -(numero)
		aux=mcm(@den,numero.den)
		@num=(aux/@den)*@num
		numero.num=(aux/numero.den)*numero.num
		Fracc.new(@num-numero.num,aux)
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