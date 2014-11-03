require 'pry'
module Examen

    class EleccionSimple < Struct.new("Pregunta", :enunciado , :respuesta, :falsas) 
        #use a class to define behavior, together with a Struct that defines the data to which the class should be initialized.
        attr_reader :pregunta
        def initialize(arg)
            @http://stackoverflow.com/questions/17492357/ruby-struct-vs-initializpregunta= Array.new(0)
           
        end
        
         def empu(unapreg)
             @pregunta.push(unapreg)
         end
         
         def saca(arg)
             retorna = @pregunta.to_a[arg]
             retorna
         end
         
         
        #  class Person < Struct.new(:age, :gender)
        #          def to_s
        #              "Age: #{age}; Gender: #{gender}"
        #          end
        #  end
         
         
         
          def preg arg
              " PREGUNTA : #{self.saca(arg)}"
          end
    end
    
end