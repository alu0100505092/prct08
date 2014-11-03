require 'spec_helper'
require 'examen'

module Examen
   class EleccionSimple
       describe Examen::EleccionSimple do
           
           before :all do 
             # @preg=Examen::EleccionSimple.new({ text: '¿Pregunta?', right:'Respuesta', distractors:[1,2,3] })
             
             #@p1=Struct::Pregunta.new("¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots", "nil", ['#<Xyz:0xa000208>',0,'Ninguna de las anteriores'])
            @objeto=EleccionSimple.new(0)
            
            #Struct.new("Pregunta", :enunciado , :respuesta, :falsas)
            @p1=::Pregunta.new("¿Esto es una pregunta?", "Si", ['No','Busca','Tal vez'])
            @objeto.empu(@p1)
            cosa=@objeto.saca(0)
            otracosa=@objeto.preg(0)
            
           end
           
           context "Eleccion Simple" do
              
           
                it "Debe existir una pregunta " do
                    expect(@cosa).to eq("¿Esto es una pregunta?")
                    expect(@objeto.to_a[0].to_a[0])=="Si"
                    expect(@objeto.to_a[0].to_a[0])==['No','Busca','Tal vez']
                end
                
                it "Debe existir un metodo para obtener la pregunta "  do
                  expect(@otracosa).to eq("PREGUNTA : ¿Esto es una pregunta?")
                end
                
                it "Deben existir opciones de respuesta " do
                    # expect(@p1.to_a[1]) != nil
                    # expect(@p1.to_a[2]) !=[nil] 
                    
                end
                    
                it "Se debe invocar a un metodo para obtener las opciones de respuesta" do
                end
                
                it "Se deben mostrar por la consola la pregunta y las opciones de respuesta" do
                end
                
                
          it "Prueba de preguntas" do
              #creo las preguntas
              @p1=Struct::Pregunta.new("¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots", "nil", ['#<Xyz:0xa000208>',0,'Ninguna de las anteriores'])
              @p2=Struct::Pregunta.new("¿La siguiente definicion de un hash en ruby es valida?", "verdadero" , "falso")
              @p3=Struct::Pregunta.new("¿Cual es la siguiente salida del codigo en ruby?", 1, ["bob","HEY","Ninguna"])
              @p4=Struct::Pregunta.new("¿Cual es el tipo de objeto en el siguiente codigo en ruby?", "una instancia de la clase Class", ["una constante","un objeto","Ninguna"])
              @p5=Struct::Pregunta.new("¿Es apropiado que una clase tablero herede de una clase juego?","verdadero" , "falso")
              
              #crear nodos
              
              @nodo1=Nodo.new(@p1)
              @nodo2=Nodo.new(@p2)
              @nodo3=Nodo.new(@p3)
              @nodo4=Nodo.new(@p4)
              @nodo5=Nodo.new(@p5)
              
              #se crea la lista
              
              @lista=Lista.new(0)
              @lista.push(@nodo1)
              @lista.push(@nodo2)
              @lista.push(@nodo3)
              @lista.push(@nodo4)
              @lista.push(@nodo5)

              
          end#cierro it
          
                    
                
           end#cierro context
           
           
       end#cierro describe
       
       
       
       
       describe Examen do
                before :all do
                    @lista = Lista.new(0)
                    @n1 = Nodo.new("Nodo 1")
                    @n2 = Nodo.new("Nodo 2")
                end
                
                it 'Se deben insertar nodos en la lista.' do
                    @lista.push(@n1)
                    expect(@lista.inicio).to eq(@n1)
                end
                
                it 'Se insertan varios elementos.' do
                    @lista.push(@n1)
                    @lista.push(@n2)
                    expect(@lista.inicio).to eq(@n2)
                    @lista.ext
                    expect(@lista.inicio).to eq(@n1)
                end
                
                it 'Se extrae el primer elemento de la lista.' do
                    @lista.push(@n1)
                    @lista.push(@n2)
                    @lista.ext
                    expect(@lista.inicio).to eq(@n1)
                end
    
        end
        
        
         describe Examen do
                before :all do
                    @examen = Lista.new(0)
                    @p1=Struct::Pregunta.new("¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots", "nil", ['#<Xyz:0xa000208>',0,'Ninguna de las anteriores'])
                    @p2=Struct::Pregunta.new("¿La siguiente definicion de un hash en ruby es valida?", "verdadero" , "falso")
                    @p3=Struct::Pregunta.new("¿Cual es la siguiente salida del codigo en ruby?", 1, ["bob","HEY","Ninguna"])
                    @p4=Struct::Pregunta.new("¿Cual es el tipo de objeto en el siguiente codigo en ruby?", "una instancia de la clase Class", ["una constante","un objeto","Ninguna"])
                    @p5=Struct::Pregunta.new("¿Es apropiado que una clase tablero herede de una clase juego?","verdadero" , "falso")
                    
                end
                
                it 'Se deben insertar una pregunta en el examen.' do
                    @nodo1=Nodo.new(@p1)
                    @examen.push(@nodo1)
                    expect(@examen.inicio).to eq(@nodo1)
                end
                
                it 'Se insertan varios elementos.' do
                    @nodo1=Nodo.new(@p1)
                    @nodo2=Nodo.new(@p2)
                    @nodo3=Nodo.new(@p3)
                    @nodo4=Nodo.new(@p4)
                    @nodo5=Nodo.new(@p5)
                    @examen.push(@nodo1)
                    @examen.push(@nodo2)
                    @examen.push(@nodo3)
                    @examen.push(@nodo4)
                    @examen.push(@nodo5)
                    expect(@examen.inicio).to eq(@nodo5)
                    @examen.ext
                    expect(@examen.inicio).to eq(@nodo4)
                    @examen.ext
                    expect(@examen.inicio).to eq(@nodo3)
                    @examen.ext
                    expect(@examen.inicio).to eq(@nodo2)
                    @examen.ext
                    expect(@examen.inicio).to eq(@nodo1)
                end
                
                it 'Se extrae el primer elemento del examen.' do
                    @nodo1=Nodo.new(@p1)
                    @nodo2=Nodo.new(@p2)
                    @nodo3=Nodo.new(@p3)
                    @nodo4=Nodo.new(@p4)
                    @nodo5=Nodo.new(@p5)
                    @examen.push(@nodo1)
                    @examen.push(@nodo2)
                    @examen.push(@nodo3)
                    @examen.push(@nodo4)
                    @examen.push(@nodo5)
                    
                    @examen.ext
                    @examen.ext
                    @examen.ext
                    @examen.ext
                    expect(@examen.inicio).to eq(@nodo1)
                    
            
                end
    
        end
               
              
       
       
        
   end
 
end