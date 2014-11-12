require 'spec_helper'
require 'examen'

module Examen
   class Pregunta
       describe Examen::Pregunta do
           
           before :each do 
             # @preg=Examen::EleccionSimple.new({ text: '¿Pregunta?', right:'Respuesta', distractors:[1,2,3] })
             
             #@p1=Struct::Pregunta.new("¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots", "nil", ['#<Xyz:0xa000208>',0,'Ninguna de las anteriores'])
            #@objeto=EleccionSimple.new(0)
            
            #Struct.new("Pregunta", :enunciado , :respuesta, :falsas)
            #@p1=Struct::Pregunta.new("¿Esto es una pregunta?", "Si", ['No','Busca','Tal vez'])
            #@objeto.empu(@p1)
            #cosa=@objeto.saca(0)
            #otracosa=@objeto.preg(0)
            
            @p=EleccionSimple.new({:enunciado => '¿Esto es una pregunta?', :respuesta => 'si', :falsas => ['No',0,'Tal vez']})
            
           end
           
           context "Eleccion Simple" do
              
           
                it "Debe existir una pregunta " do
                    expect(@p.enunciado).to eq('¿Esto es una pregunta?')
                    expect(@p.respuesta)=='si'
                    expect(@p.falsas)==['No',0,'Tal vez']
                    
                    # expect(@cosa).to eq("¿Esto es una pregunta?")
                    # expect(@objeto.to_a[0].to_a[0])=="Si"
                    # expect(@objeto.to_a[0].to_a[0])==['No',0,'Tal vez']
                end
                
                it "Debe existir un metodo para obtener la pregunta "  do
                  expect(@p.preg).to eq("PREGUNTA : ¿Esto es una pregunta?")
                end
                
                it "Deben existir opciones de respuesta " do
                     expect(@p.respuesta) != nil
                     expect(@p.falsas) !=[nil] 
                    
                end
                    
                it "Se debe invocar a un metodo para obtener las opciones de respuesta" do
                    expect(@p.extresp).to eq("RESPUESTAS : si, [\"No\", 0, \"Tal vez\"]")
                    
                    
                end
                
                it "Se deben mostrar por la consola la pregunta y las opciones de respuesta" do
                    expect(@p.to_s).to eq("PREGUNTA : ¿Esto es una pregunta?RESPUESTAS : si, [\"No\", 0, \"Tal vez\"]")
                end
                
                
          it "Prueba de preguntas" do
              #creo las preguntas
              @p1=EleccionSimple.new(:enunciado => "¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots",:respuesta =>"nil",:falsas => ['#<Xyz:0xa000208>',0,'Ninguna de las anteriores'])
              @p2=EleccionSimple.new(:enunciado =>"¿La siguiente definicion de un hash en ruby es valida?",:respuesta => "verdadero" ,:falsas => "falso")
              @p3=EleccionSimple.new(:enunciado =>"¿Cual es la siguiente salida del codigo en ruby?",:respuesta =>1,:falsas => ["bob","HEY","Ninguna"])
              @p4=EleccionSimple.new(:enunciado =>"¿Cual es el tipo de objeto en el siguiente codigo en ruby?",:respuesta => "una instancia de la clase Class",:falsas => ["una constante","un objeto","Ninguna"])
              @p5=EleccionSimple.new(:enunciado =>"¿Es apropiado que una clase tablero herede de una clase juego?",:respuesta =>"verdadero" , :falsas =>"falso")
              
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
                    @p1=EleccionSimple.new(:enunciado => "¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots",:respuesta =>"nil",:falsas => ['#<Xyz:0xa000208>',0,'Ninguna de las anteriores'])
                    @p2=EleccionSimple.new(:enunciado =>"¿La siguiente definicion de un hash en ruby es valida?",:respuesta => "verdadero" ,:falsas => "falso")
                    @p3=EleccionSimple.new(:enunciado =>"¿Cual es la siguiente salida del codigo en ruby?",:respuesta =>1,:falsas => ["bob","HEY","Ninguna"])
                    @p4=EleccionSimple.new(:enunciado =>"¿Cual es el tipo de objeto en el siguiente codigo en ruby?",:respuesta => "una instancia de la clase Class",:falsas => ["una constante","un objeto","Ninguna"])
                    @p5=EleccionSimple.new(:enunciado =>"¿Es apropiado que una clase tablero herede de una clase juego?",:respuesta =>"verdadero" , :falsas =>"falso")
              
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
               
                describe Examen do
                    before :each do
                    @p=Verdaderofalso.new(:enunciado => '¿Pregunta de falso y verdadero?',:respuesta => 'verdadero', :falsas => 'falso')
                    end
                    
                    it "Debe heredar de EleccionSimple" do
                    #----------------------------------------------------------
                    #----------------------------------------------------------
                    #crear expect comparando pregunta
                    #pregunte es una instancia de o intance_of -- is_a
                    #----------------------------------------------------------
                    #----------------------------------------------------------
                        expect(@p).instance_of?(Verdaderofalso)
                        expect(@p).is_a?(EleccionSimple)
                        expect(@p.enunciado).to eq('¿Pregunta de falso y verdadero?')
                    end

                    it "Debe existir una pregunta de verdadero y falso" do
                    #debe evaluar de que tenga dos elementos, falso y verdadero
			        expect(@p.respuesta)=='verdadero'
                        expect(@p.falsas)=='falso'
		            end
		            
		            
                    
                end
                
                
                describe Examen do
                    before :all do
                            @examen = Lista.new(0)
                            @p1=EleccionSimple.new(:enunciado => "¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots",:respuesta =>"nil",:falsas => ['#<Xyz:0xa000208>',0,'Ninguna de las anteriores'])
                            @p2=EleccionSimple.new(:enunciado =>"¿La siguiente definicion de un hash en ruby es valida?",:respuesta => "verdadero" ,:falsas => "falso")
                            @p3=EleccionSimple.new(:enunciado =>"¿Cual es la siguiente salida del codigo en ruby?",:respuesta =>1,:falsas => ["bob","HEY","Ninguna"])
                            @p4=EleccionSimple.new(:enunciado =>"¿Cual es el tipo de objeto en el siguiente codigo en ruby?",:respuesta => "una instancia de la clase Class",:falsas => ["una constante","un objeto","Ninguna"])
                            @p5=EleccionSimple.new(:enunciado =>"¿Es apropiado que una clase tablero herede de una clase juego?",:respuesta =>"verdadero" , :falsas =>"falso")
                      
                            # @lista = Li••••••••••••••••sta.new(0)
                            # @n1 = Nodo.new("Nodo 1")
                            # @n2 = Nodo.new("Nodo 2")  
                            # @n3 = Nodo.new("Nodo 3")
                            end
                            
                             it "Las lista enlazadas se deben poder recorrer en ambos sentidos" do
                            @nodo1=Nodo.new(@p1)
                            
                            @nodo2=Nodo.new(@p2)
                  	        @nodo3=Nodo.new(@p3)
                            @nodo4=Nodo.new(@p4)
                            @nodo5=Nodo.new(@p5)
                            @examen.pushf(@nodo5)
                            @examen.push(@nodo4)
                            @examen.push(@nodo3)
                            @examen.push(@nodo2)
                            @examen.push(@nodo1)
                            expect(@examen.inicio).to eq(@nodo1)
                            expect(@examen.fin).to eq(@nodo5)
                            @examen.ext
                            @examen.extfin
                            expect(@examen.inicio).to eq(@nodo2)
			                expect(@examen.fin).to eq(@nodo4)
                            @examen.ext
                            @examen.extfin
                            expect(@examen.inicio).to eq(@nodo3)
                            expect(@examen.fin).to eq(@nodo3)
                            
                       
                             end
                    
                          it "Extraer el primer elemento del examen" do
                            @nodo1=Nodo.new(@p1)
                            @nodo2=Nodo.new(@p2)
                            @nodo3=Nodo.new(@p3)
                            @nodo4=Nodo.new(@p4)
                            @nodo5=Nodo.new(@p5)
                            @examen.push(@nodo5)
                            @examen.push(@nodo4)
                            @examen.push(@nodo3)
                            @examen.push(@nodo2)
                            @examen.push(@nodo1)

                             expect(@examen.inicio).to eq(@nodo1)
                            

      		                 end
                    
                            it "Extraer el ultimo elemento del examen" do
                            @nodo1=Nodo.new(@p1)
                            @nodo2=Nodo.new(@p2)
                            @nodo3=Nodo.new(@p3)
                            @nodo4=Nodo.new(@p4)
                            @nodo5=Nodo.new(@p5)
                            @examen.pushf(@nodo1)
                            @examen.push(@nodo2)
                            @examen.push(@nodo3)
                            @examen.push(@nodo4)
                            @examen.push(@nodo5)
                                
                            expect(@examen.fin).to eq(@nodo1)
                            
                            
		                    end
                
                    
                    
                end
                 
                 describe Examen do
                     before :all do
                            @examen = Lista.new(0)
                            @p1=EleccionSimple.new(:valor => "5",:enunciado => "¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots",:respuesta =>"nil",:falsas => ['#<Xyz:0xa000208>',0,'Ninguna de las anteriores'])
                            @p2=EleccionSimple.new(:valor => "2",:enunciado =>"¿La siguiente definicion de un hash en ruby es valida?",:respuesta => "verdadero" ,:falsas => "falso")
                            @p3=EleccionSimple.new(:valor => "3",:enunciado =>"¿Cual es la siguiente salida del codigo en ruby?",:respuesta =>1,:falsas => ["bob","HEY","Ninguna"])
                            @p4=EleccionSimple.new(:valor => "5",:enunciado =>"¿Cual es el tipo de objeto en el siguiente codigo en ruby?",:respuesta => "una instancia de la clase Class",:falsas => ["una constante","un objeto","Ninguna"])
                            @p5=EleccionSimple.new(:valor => "1",:enunciado =>"¿Es apropiado que una clase tablero herede de una clase juego?",:respuesta =>"verdadero" , :falsas =>"falso")
                            
                            @nodo1=Nodo.new(@p1)
                            @nodo2=Nodo.new(@p2)
                  	        @nodo3=Nodo.new(@p3)
                            @nodo4=Nodo.new(@p4)
                            @nodo5=Nodo.new(@p5)
                            @examen.pushf(@nodo5)
                            @examen.push(@nodo4)
                            @examen.push(@nodo3)
                            @examen.push(@nodo2)
                            @examen.push(@nodo1)
                      
                        end
                        
                    
                    
                        
                    context "Comparacion de la dificultad de las preguntas" do
                        
                    
                        it "La pregunta p1 debe tener una mayor dificultad que la pregunta p2" do
                             #expect(@p1.valor).should > (@p2.valor)
                             expect(@p1.valor > @p2.valor).to eq(true)
                        end
                        
                        it "La pregunta p1 debe tener una mayor dificultad que la pregunta p2" do
                             #expect(@p1.valor).should > (@p2.valor)
                             expect(@p1.valor < @p2.valor).to eq(false)
                        end
                        
                        it "La pregunta p1 debe tener una dificultad igual que la pregunta p4" do
                            #expect(@p1.valor).should == (@p4.valor)
                            expect(@p1.valor == @p4.valor).to eq(true)
                        end
                        
                        it "La pregunta p5 debe tener una dificultad menor que la pregunta p4" do
                            #expect(@p5.valor).should < (@p4.valor)
                            expect(@p5.valor < @p4.valor).to eq(true)
                        end
                    end
                    
                    
                    
                    
                    context "Enumerable las listas enlazadas" do
                        
                        it "La lista es enumerable" do
                            string = ""
                             @examen.each do |l| 
                                string << "test"
                                string << "\n" 
                            end
                            expect(string).to eq("test\n"*5)
                        end
                        
                        
                        it "Debe contar los elementos de la lista" do
                        expect(@examen.count).to eq(5)
                        
                        end
                        
                         it "Drop" do
                            expect(@examen.drop(5)).to eq([])
                         end
                        
                        it "Find index" do
                            expect(@examen.find_index {|i| i.value == @nodo3.value}).to eq(2)
                        end
                        
                        
                        
                        
                    end
                        
                end 
                
                
                
    end    
       
       
        
end
 