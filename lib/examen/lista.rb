

Nodo =Struct.new(:value, :next, :prev)



class Lista
    def initialize(nodo)
        @inicio=Nodo.new(nil)
        @fin=Nodo.new(nil)
        @fin=@inicio
    end
    
    
    def push(nodo)    #poner if preguntar Nodo vacio
       if @inicio==nil
        @inicio=nodo
        @fin=@inicio    
            
        else    
        nodo.next =@inicio
        @inicio.prev=nodo
        @inicio=nodo
        end
    end
    
    def pushf(nodo)    #poner if preguntar Nodo vacio
        if @fin.nil?
           @inicio=nodo
           
            @fin=nodo
        
 
        end
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
        #@fin.prev =@fin
        aux.value
    end
    
        
    def inicio
        
        @inicio
    end
    
    def fin
        
        @fin
    end
end
