require 'examen/exam'
module Examen
    attr_reader :examen
    class Interfaz
    
        def initialize(examen)
            @examen=examen
            
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

    
