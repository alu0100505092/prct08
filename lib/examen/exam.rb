require "examen/lista"
module Examen
    class Exam
        attr_reader :preguntas
        def initialize (listaPreguntas)
            @preguntas = listaPreguntas 
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
     
        # def to_ss 
        #     cadena =""
        #     for i in @preguntas do
        #         cadena +=i.to_s
        #     end
        #     cadena
        # end
        
        def to_s
            aux = @preguntas.inicio
            respuesta = ""
            respuesta += aux.value.to_s
            respuesta += "\n"
            while (aux != @preguntas.fin) do
                aux = aux.next
                respuesta += aux.value.to_s
                respuesta += "\n"
            end
            respuesta
	    end
    end    
end
    
        
        

   
