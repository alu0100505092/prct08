

Nodo =Struct.new(:value, :next, :previous)



class Lista
    def initialize(nodo)
        @inicio=Nodo.new(nil)
        @fin=Nodo.new(nil)
    end
    
    
    def push(nodo)    #poner if preguntar Nodo vacio
        if @inicio!=nil
        nodo.next =@inicio
        @inicio.previous =nodo
        @inicio = nodo
        else 
        @inicio = nodo
        @fin = nodo
        end
        
    end
    
    
    def pop(nodo)
        @inicio=@inicio.next
        @inicio.previous=nil
    end
    
    def ext 
        aux=@inicio
        @inicio=@inicio.next
        #@fin.previous =@fin
        aux.value
    end
    
        
    def inicio
        
        @inicio
    end
    
    def fin
        
        @fin
    end
end
