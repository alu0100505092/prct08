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
        
        #http://stackoverflow.com/questions/13769378/storing-methods-in-a-lambda-and-sending-to-an-object
        def invertirlambda(lista)
            arr2=Array.new
            arr2.push(lista)
            invertir = lambda { reverse } #es igual decir lambda ->
            arr2=lista.instance_exec(&invertir)
            
            return arr2
            
                
        end
        
        
    end    
    
end

    
