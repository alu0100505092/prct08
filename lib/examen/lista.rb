

Nodo =Struct.new(:value, :next)



class Lista
    def initialize(nodo)
        @inicio=Nodo.new(nil)
    end
    
    
    def push(nodo)    #poner if preguntar Nodo vacio
        if @inicio!=nil #preguntar a COROMOTO
        nodo.next =@inicio
        #head=Nodo.new(nodo,@Inicio)
        @inicio = nodo
        end
    end
    
    
    def pop(nodo)
        @inicio=@inicio.next
    end
    
    def ext 
        aux=@inicio
        @inicio=@inicio.next
        aux.value
    end
    
    
    def inicio
        
        @inicio
    end
    
end
