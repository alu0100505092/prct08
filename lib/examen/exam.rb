#===Class Examen
#*Metodo initialize
#*Metodo insertQuestion
#*Metodo insertQuestion2
#*Metodo compresp
#*Metodo preguntas
#*Metodo respu

require "examen/lista"
module Examen
    class Exam 
        attr_reader :preguntas, :respuescorrectas
        def initialize (args)
            @preguntas = args[:preguntas] 
            @respuescorrectas=args[:respuescorrectas]
        end
     
        def insertQuestion(question)
            nodo=Nodo.new(question)
            nodoInsertado = @preguntas.pushf(nodo)
            nodoInsertado.value
        end
     
        def insertQuestion2(question)
            nodo=Nodo.new(question)
            nodoInsertado = @preguntas.push(nodo)
            nodoInsertado.value
        end
        
        
        def compresp(resp)
            correctas=0 
            i=0
            n=0
            
            while n < 5 do
                if @respuescorrectas[i] == resp[i]
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
        
        
        def preguntas   
            @preguntas
        end
        
        
        def respu       
            @respuescorrectas
        end
        
        
        def invertir
            aux = @preguntas.fin
            respuesta = ""
            respuesta += aux.value.to_s
            respuesta += "\n"
            while (aux != @preguntas.inicio) do
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
            aux=Array.new
            aux.push(lista)
            invertir = lambda { reverse } #es igual decir lambda ->
            aux=lista.instance_exec(&invertir)
            
            return aux
            
                
        end
    end    
end
    
        
        

   
