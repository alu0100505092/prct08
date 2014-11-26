require "examen/lista"
module Examen
    class Exam
        attr_reader :preguntas
        def initialize (listaPreguntas,respu)
            @preguntas = listaPreguntas 
            @respuescorrectas=respu
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
            @respuestascorrectas
        end
        
            
     
        # def to_ss 
        #     cadena =""
        #     for i in @preguntas do
        #         cadena +=i.to_s
        #     end
        #     cadena
        # end
        
        
    end    
end
    
        
        

   
