

Nodo =Struct.new(:value, :next)



class Lista
    def initialize(nodo)
        @Inicio=Nodo.new(nodo,nil)
    end
    
    
    def push(nodo)
        nodo.next =@Inicio
        #head=Nodo.new(nodo,@Inicio)
        @Inicio = nodo
    end
    
    
    def pop(nodo)
        @Inicio=@Inicio.next
    end
    
    def ext 
        
        aux=@Inicio
        @Inicio=@Inicio.next
        aux.value
    end
    
    
    def inicio
        
        @Inicio
    end
    
end
