require 'pry'
module Examen

    class Pregunta 
        
        attr_reader :valor, :enunciado, :respuesta,:falsas
        include Comparable
        def initialize(arg)
            @valor=arg[:valor]
            @enunciado=arg[:enunciado]
            @respuesta=arg[:respuesta]
            @falsas=arg[:falsas]
        end
        
       
        def extresp 
             
             "RESPUESTAS : #{@respuesta}, #{@falsas}"
             
        end
         
        def to_s
            preg +  extresp
        end
         
         
        def preg 
              "PREGUNTA : #{@enunciado}"
        end
        
        def <=> other
            
            self.valor <=> other.valor
        end 
        
          
    end
    
end
