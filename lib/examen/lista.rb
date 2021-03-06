#===Class Lista
#*Metodo initialize
#*Metodo push
#*Metodo pushf
#*Metodo pop
#*Metodo ext
#*Metodo extfin
#*Metodo inicio
#*Metodo fin
#*Metodo respuesta
#*Metodo each
include Enumerable
Nodo =Struct.new(:value, :next, :prev)
class Lista
    Nodo =Struct.new(:value, :next, :prev)
    include Enumerable
    
    def initialize(nodo)
        @inicio=Nodo.new(nil)
        @fin=Nodo.new(nil)
        @fin=@inicio
    end
    
    
    def push(nodo)    #poner if preguntar Nodo vacio
        
        nodo.next =@inicio
        @inicio.prev=nodo
        @inicio=nodo
    
    end
    
   
    
    
    def pushf(nodo)    #poner if preguntar Nodo vacio
       
        @inicio=nodo
        @fin=nodo
        
 
       
    end
   
    
    
    def pop(nodo)
        @inicio=@inicio.next
       #@inicio.prev=nil
    end
    
    def ext 
        aux=@inicio
        @inicio=@inicio.next
        aux.value
    end
    
    def extfin
        aux=@fin
        @fin=@fin.prev
        aux.value
    end
    
        
    def inicio
        
        @inicio
    end
    
    def fin
        
        @fin
    end
    
    
    def respuesta
            @respuesta
        end
          
    
    def each(&block)
         tempo = @inicio
         while tempo != nil
            block.call(tempo)
             #yield tempo.value
             tempo=tempo.next
         end
    end    
    
    
end

