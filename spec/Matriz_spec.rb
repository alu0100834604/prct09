require "Practica9/Matriz.rb"
require "Practica9/Fraccion.rb"

describe Matriz do
 before :each do
    #@matriz1 = Matritz.new([1 , 2, 3],[4, 5 , 6],[7, 8, 9])

    @matriz2 = Matriz.new([[1,2],[3,4]])
    @matriz3 = Matriz.new([[5, 6],[7,8]])
    @matriz4 = Matriz.new([[ Fraccion.new(1,2) , Fraccion.new(1,3)],[Fraccion.new(2,4), Fraccion.new(1,5)]])
    @matriz5 = Matriz.new([[ Fraccion.new(1,2) , Fraccion.new(1,3)],[Fraccion.new(2,4), Fraccion.new(1,5)]])

  end  

describe "Suma de Matrices" do
    it "Se sumar correctamente" do
	@resultado = @matriz2 + @matriz3
      	@resultado.should == Matriz.new([[6,8],[10,12]]) 
    end
  end

describe "Multiplicacion de Matrices" do
	it "Se multiplicar correctamente" do
	@resultado = @matriz2 * @matriz3
	@resultado.should == Matriz.new([[19,22],[43,50]])
	end

end

describe "Suma de matrices con fracciones" do
	it "Se deben sumar fracciones correctamente" do
	@resultado = @matriz4 + @matriz5
      	@resultado.should == Matriz.new([[ Fraccion.new(1,1) , Fraccion.new(2,3)],[Fraccion.new(1,1), Fraccion.new(2,5)]])
	end

end
describe "Multiplicacion de fracciones" do
	it "Se debe multiplicar fracciones correctamente" do
	@resultado = @matriz4 * @matriz5
      	@resultado.should == Matriz.new([[ Fraccion.new(5,12) , Fraccion.new(7,30)],[Fraccion.new(7,20), Fraccion.new(31,150)]])
	end

end
end
