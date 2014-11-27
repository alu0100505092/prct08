#===Class Interfaz
#*Metodo initialize
#*Metodo to_s
#*Metodo invertir
#*Metodo invertirfuncional
#*Metodo invertirlambda

require 'examen/exam'
require 'examen/lista'
module Examen
    
    class Interfaz 
    
    attr_reader :examen
        def initialize(args)
            @examen=args[:examen]
            
            
        end
        
        def to_s
            aux = @examen.inicio
            respuesta = ""
            respuesta += aux.value.to_s
            respuesta += "\n"
            while (aux != @examen.fin) do
                aux = aux.next
                respuesta += aux.value.to_s
                respuesta += "\n"
            end
            respuesta
	    end
        
        
	    
	   
	    
	    
        
        
    end    
    
end

    
