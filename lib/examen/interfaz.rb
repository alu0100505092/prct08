require 'examen/exam'
module Examen
    attr_reader :examen
    class Interfaz
    
        def initialize(examen)
            @examen=examen
        end
        
        def compresp(resp)
            correctas=0 
            i=0
            n=0
            
            while n < 5 do
                if @examen[i] == resp[i]
                    correctas+=1
                end
                i+=1 
                n+=1
            end
            if correctas < (i/2)+1
                mensaje = "Ha suspendido el examen: #{correctas}/#{i}"
            else
                if correctas == i
                     mensaje = "Su nota es: Sobresaliente 10"
                else
                    mensaje = "Ha aprobado el examen: #{correctas}/#{i}"
                end
            end
            mensaje
        end
    end    
    
end

    
