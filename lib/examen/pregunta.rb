require 'pry'
module Examen

    class EleccionSimple #< Struct.new("Pregunta", :enunciado , :respuesta, :falsas) 
        #use a class to define behavior, together with a Struct that defines the data to which the class should be initialized.
        attr_reader :enunciado, :respuesta,:falsas
        def initialize(arg)
            @enunciado=arg[:enunciado]
            @respuesta=arg[:respuesta]
            @falsas=arg[:falsas]
           
        end
        
        #  def empu(unapreg)
        #      @pregunta.push(unapreg)
        #  end
         
        #  def saca(arg)
        #      retorna = @pregunta.to_a[arg]
        #      retorna
        #  end
         
         
        #  class Person < Struct.new(:age, :gender)
        #          def to_s
        #              "Age: #{age}; Gender: #{gender}"
        #          end
        #  end
         
        def extresp 
             
             "RESPUESTAS : #{@respuesta}, #{@falsas}"
        end
         
        def to_s
            preg +  extresp
        end
         
         
        def preg 
              "PREGUNTA : #{@enunciado}"
        end
    end
    
end
