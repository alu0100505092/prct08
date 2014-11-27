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
        
        def invertir
            aux = @examen.fin
            respuesta = ""
            respuesta += aux.value.to_s
            respuesta += "\n"
            while (aux != @examen.inicio) do
                aux = aux.prev
                respuesta += aux.value.to_s
                respuesta += "\n"
            end
            respuesta
	    end
	    
	   
	    
	    def invertirfuncional(arr)
	        #aux=%W(#{arr})
	        #lambda {|a| a.map(&:reverse) }.call(aux.reverse)
	       arr2=Array.new
	       arr.reverse_each do |z|
	       arr2.push(z)
	       end
	       arr2
	    end
        
    end    
    
end

    
