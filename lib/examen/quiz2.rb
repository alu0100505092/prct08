require 'examen/pregunta'
require 'examen/lista'
require 'examen/exam'
module Examen
    class Quiz2 
        
        attr_accessor  :titulo, :preg
        
        def initialize (titulo,&block)
            @titulo=titulo
            @lista = Lista.new(0)
            
        
        if block_given?
            if block.arity == 1
                yield self
            else
                instance_eval &block
            end
        end
        
        @examen = Interfaz.new(:examen => @lista)
            
        end    
            
            
        def to_s
            @examen.to_ss
        end
        
        
        
      def pregunta1(pre, respuestas={})
          
            pregu = Pregunta.new(:enunciado => pre, :falsas => [0] , :respuesta => '')
            
            respuestas.each do |key, val|
                if key=='falsas'
                  pregu.falsas(val)
              else
                  pregu.respuesta=val
                  
              end
               
                
            end
            
            @lista.pushf(pregu)
      end
      
      
      
      
      
        
    end    
end

