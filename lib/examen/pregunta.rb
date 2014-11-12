require 'pry'
module Examen

    class Pregunta #< Struct.new("Pregunta", :enunciado , :respuesta, :falsas) 
        #use a class to define behavior, together with a Struct that defines the data to which the class should be initialized.
        #----------------------------------------------------------
        #----------------------------------------------------------
        #Mas general una clase pregunta y que eleccion simple y verdader falso hereden de ella, en pregunta instancear variable 'ponderacion'
        #que permita comprar el nivel de dificultad entre dos preguntas distintas
        #----------------------------------------------------------
        #----------------------------------------------------------
        
        attr_reader :enunciado, :respuesta,:falsas
        def initialize(arg)
           # @valor=arg[:valor]
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
        
        # def <=> other
        #      self.valor <=> other.valor
        # end 
        
    end
    
end
