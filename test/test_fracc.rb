require_relative '../lib/fracc'
require 'test/unit'

class TestFracc < Test::Unit::TestCase
	def setup
		@x=Fracc.new(1,2)
		@y=Fracc.new(3,4)
	end
	
	#def tear_down
      #nothing
    #end
	
	def test_simple
		assert_equal("(1,2)", @x.to_s, "Setup @a correcto")
		assert_equal("(3,4)", @y.to_s, "Setup @b correcto")
		assert_equal("(5,4)", (@x+@y).to_s, "Suma correcta")
		assert_equal("(-1,4)", (@x-@y).to_s, "Resta correcta")
		assert_equal("(3,8)", (@x*@y).to_s, "Multiplicacion correcta")
		assert_equal("(4,6)", (@x/@y).to_s, "Division correcta")
	end
	
	#def test_type_check
	    
      #assert_raise(RuntimeError) {Fracc.new('1','1')}
        
  	#end
	
	def test_failure
		assert_not_equal("(3,2)", @x.to_s, "Setup @a fallido")
		assert_not_equal("(5,3)", @y.to_s, "Setup @b fallido")
		assert_not_equal("(4,6)", (@x+@y).to_s, "Suma fallida")
		assert_not_equal("(-2,2)", (@x-@y).to_s, "Resta fallida")
		assert_not_equal("(4,6)", (@x*@y).to_s, "Multiplacion fallida")
		assert_not_equal("(3,8)", (@x/@y).to_s, "Division fallida")
	end
end