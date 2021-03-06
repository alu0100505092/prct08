#!/usr/bin/env ruby
# encoding: utf-8

require 'spec_helper'
require 'examen'

module Examen
   class Pregunta
       describe Examen::Pregunta do
           
           before :each do 
            
            
            @p=EleccionSimple.new({:enunciado => "¿Esto es una pregunta?", :respuesta => "si", :falsas => ["No",0,"Tal vez"]})
            
           end
           
           context "Eleccion Simple" do
              
           
                it "Debe existir una pregunta " do
                    expect(@p.enunciado).to eq("¿Esto es una pregunta?")
                    expect(@p.respuesta)=='si'
                    expect(@p.falsas)==['No',0,'Tal vez']
                    
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
              @p1=EleccionSimple.new(:enunciado =>"¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots",:respuesta =>"nil",:falsas => ["#<Xyz:0xa000208>",0,"Ninguna de las anteriores"])
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
                
                it "Se deben insertar nodos en la lista." do
                    @lista.push(@n1)
                    expect(@lista.inicio).to eq(@n1)
                end
                
                it "Se insertan varios elementos." do
                    @lista.push(@n1)
                    @lista.push(@n2)
                    expect(@lista.inicio).to eq(@n2)
                    @lista.ext
                    expect(@lista.inicio).to eq(@n1)
                end
                
                it "Se extrae el primer elemento de la lista." do
                    @lista.push(@n1)
                    @lista.push(@n2)
                    @lista.ext
                    expect(@lista.inicio).to eq(@n1)
                end
    
        end
        
        
         describe Examen do
                before :all do
                    @examen = Lista.new(0)
                    @p1=EleccionSimple.new(:enunciado => "¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots",:respuesta =>"nil",:falsas => ["#<Xyz:0xa000208>",0,"Ninguna de las anteriores"])
                    @p2=EleccionSimple.new(:enunciado =>"¿La siguiente definicion de un hash en ruby es valida?",:respuesta => "verdadero" ,:falsas => "falso")
                    @p3=EleccionSimple.new(:enunciado =>"¿Cual es la siguiente salida del codigo en ruby?",:respuesta =>1,:falsas => ["bob","HEY","Ninguna"])
                    @p4=EleccionSimple.new(:enunciado =>"¿Cual es el tipo de objeto en el siguiente codigo en ruby?",:respuesta => "una instancia de la clase Class",:falsas => ["una constante","un objeto","Ninguna"])
                    @p5=EleccionSimple.new(:enunciado =>"¿Es apropiado que una clase tablero herede de una clase juego?",:respuesta =>"verdadero" , :falsas =>"falso")
              
                end
                
                it "Se deben insertar una pregunta en el examen." do
                    @nodo1=Nodo.new(@p1)
                    @examen.push(@nodo1)
                    expect(@examen.inicio).to eq(@nodo1)
                end
                
                it "Se insertan varios elementos." do
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
                
                it "Se extrae el primer elemento del examen." do
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
                    @p=Verdaderofalso.new(:enunciado => "¿Pregunta de falso y verdadero?",:respuesta => "verdadero", :falsas => "falso")
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
                        expect(@p.enunciado).to eq("¿Pregunta de falso y verdadero?")
                    end

                    it "Debe existir una pregunta de verdadero y falso" do
                    #debe evaluar de que tenga dos elementos, falso y verdadero
			        expect(@p.respuesta)=="verdadero"
                        expect(@p.falsas)=="falso"
		            end
		            
		            
                    
                end
                
                
                describe Examen do
                    before :all do
                            @examen = Lista.new(0)
                            @p1=EleccionSimple.new(:enunciado => "¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots",:respuesta =>"nil",:falsas => ["#<Xyz:0xa000208>",0,"Ninguna de las anteriores"])
                            @p2=EleccionSimple.new(:enunciado =>"¿La siguiente definicion de un hash en ruby es valida?",:respuesta => "verdadero" ,:falsas => "falso")
                            @p3=EleccionSimple.new(:enunciado =>"¿Cual es la siguiente salida del codigo en ruby?",:respuesta =>1,:falsas => ["bob","HEY","Ninguna"])
                            @p4=EleccionSimple.new(:enunciado =>"¿Cual es el tipo de objeto en el siguiente codigo en ruby?",:respuesta => "una instancia de la clase Class",:falsas => ["una constante","un objeto","Ninguna"])
                            @p5=EleccionSimple.new(:enunciado =>"¿Es apropiado que una clase tablero herede de una clase juego?",:respuesta =>"verdadero" , :falsas =>"falso")
                      
                            
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
                            @p1=EleccionSimple.new(:valor => "5",:enunciado => "¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots",:respuesta =>"nil",:falsas => ["#<Xyz:0xa000208>",0,"Ninguna de las anteriores"])
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
                             expect(@p1 > @p2).to eq(true)
                        end
                        
                        it "La pregunta p1 debe tener una mayor dificultad que la pregunta p2" do
                             #expect(@p1.valor).should > (@p2.valor)
                             expect(@p1 < @p2).to eq(false)
                        end
                        
                        it "La pregunta p1 debe tener una dificultad igual que la pregunta p4" do
                            #expect(@p1.valor).should == (@p4.valor)
                            expect(@p1 == @p4).to eq(true)
                        end
                        
                        it "La pregunta p5 debe tener una dificultad menor que la pregunta p4" do
                            #expect(@p5.valor).should < (@p4.valor)
                            expect(@p5 < @p4).to eq(true)
                        end
                        
                        it "La pregunta p1 es mayor que la pregunta p3 : True"  do
                            expect(@p1.enunciado.size > @p3.enunciado.size).to eq(true)
                        end
                        
                        it "La pregunta p es mayor que la pregunta p : False"  do
                            expect(@p5.enunciado.size < @p2.enunciado.size).to eq(false)
                        end
                        
                        it "La pregunta p5 es igual a la pregunta p5 : True"  do
                            expect(@p5.enunciado.size == @p5.enunciado.size).to eq(true)
                        end
                        
                        it "La pregunta p5 no es igual a la pregunta p2"  do
                            expect(@p5.enunciado.size == @p2.enunciado.size).to eq(false)
                        end
                        
                        
                    end
                    
                    
                    
                    
                    context "Enumerable las listas enlazadas" do
                        
                        it "La lista es enumerable" do
                            string = ""
                             @examen.each do |l| 
                                string << "probando"
                                string << "\n" 
                            end
                            expect(string).to eq("probando\n"*5)
                        end
                        
                        
                        it "Debe contar los elementos de la lista" do
                        expect(@examen.count).to eq(5)
                        
                        end
                        
                         it "Drop" do
                            expect(@examen.drop(5)).to eq([])
                         end
                        
                        it "Encontrar index" do
                            expect(@examen.find_index {|i| i.value == @nodo3.value}).to eq(2)
                        end
                        
                        it "Se puede hacer un each" do
		                     @examen.each{|i| i}
	                	end
                        
                        it "Debe iteriar en la lista enlazada : min" do
                             expect(@examen.min_by{|nodo| nodo.length} != @nodo1).to eq(false)
                              
                        end
                        
                        it "Debe iteriar en la lista enlazada : max" do
                           
                            expect(@examen.max_by{|nodo| nodo.length}).to eq(@nodo1)
                             
                        end
                        it "Debe iteriar en la lista enlazada : sort" do
                             expect(@examen.sort_by {|palabra| palabra.length} != @examen).to eq(true)
                             
                        end
                        
                        
                       
                    end
                        
                    context "Clase Exam " do
                        
                        before :each do
                            @examen = Lista.new(0)
                            @p1=EleccionSimple.new(:valor => "5",:enunciado =>"¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots",:respuesta =>"nil",:falsas => ["#<Xyz:0xa000208>",0,"Ninguna de las anteriores"])
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
                           
                            @rc1="nil"
                            @rc2="verdadero"
                            @rc3="1"
                            @rc4="una instancia de la clase Class"
                            @rc5="verdadero"
                            @rf2="falso"
                            @rf3="HEY"
                            @rf4="Ninguna"
                            @rf5='falso'
                            
                            @arrayPreguntas=[@p1,@p2,@p3,@p4,@p5]
                            @arrayinvertido=[@p5,@p4,@p3,@p2,@p1]
                            arrayRespuestasCorrectas = ["@rc1","@rc2","@rc3","@rc4","@rc5"]
                           
                            @exam=Exam.new(:preguntas => @examen, :respuescorrectas => arrayRespuestasCorrectas)
                            
                           
                          
                        end
                        
                        it "Debe existir una clase examen" do
                            expect(@exam).instance_of?(Exam)
                        end
                        
                        it "#Añadir una pregunta al examen" do
                            expect(@exam.insertQuestion(@p1)).to eq(@p1)
                        end
                        
                        it "Debe tener una lista de respuestas correctas" do 
                            expect(@exam.respu).to eq(["@rc1","@rc2","@rc3","@rc4","@rc5"])
                        end     
                        
                        
                        
                        it "#Se evalua si todas las respuestas correctas" do
                            
                            arrayRespuestasUsuario = ["@rc1","@rc2","@rc3","@rc4","@rc5"]
                            expect(@exam.compresp(arrayRespuestasUsuario)).to eq("Su nota es: Sobresaliente 10")
      
                        end
                        
                        it "Se evalua si el examen esta aprobado" do
                            arrayRespuestasUsuario = ["@rc1","@rc2","@rf3","@rc4","@rc5"]
                            expect(@exam.compresp(arrayRespuestasUsuario)).to eq("Ha aprobado el examen: 4/5") 
                        end    
                         
                        it "#Se evalua si el examen esta suspenso" do
                            arrayRespuestasUsuario = ["@rc1","@rf2","@rc3","@rf4","@rf5"]
                            expect(@exam.compresp(arrayRespuestasUsuario)).to eq("Ha suspendido el examen: 2/5")
                        end
                        
                        it "Se deben mostrar en orden inverso las preguntas" do
                        
                         expect(@exam.invertir).to eq(@p5.to_s+"\n"+@p4.to_s+"\n"+@p3.to_s+"\n"+@p2.to_s+"\n"+@p1.to_s+"\n")
                        
                        end
                        
                        it " Metodo para invertir las preguntas del examen prog funcional" do
                            expect(@exam.invertirfuncional(@arrayPreguntas)).to eq(@arrayinvertido)
                            
                        end
                        
                         it " Metodo para invertir lambda" do
                            expect(@exam.invertirlambda(@arrayPreguntas)).to eq(@arrayinvertido)
                            
                        end
                        
                    
                    end
                        
                        
                    
                     
                    
                    context "#Interfaz" do
                         
                        before :each do
                            @examen = Lista.new(0)
                            @p1=EleccionSimple.new(:valor => "5",:enunciado =>"¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots",:respuesta =>"nil",:falsas => ["#<Xyz:0xa000208>",0,"Ninguna de las anteriores"])
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
                            
                            @rc1="nil"
                            @rc2="verdadero"
                            @rc3="1"
                            @rc4="una instancia de la clase Class"
                            @rc5="verdadero"
                            @rf2="falso"
                            @rf3="HEY"
                            @rf4="Ninguna"
                            
                            arrayRespuestasCorrectas = ["@rc1","@rc2","@rc3","@rc4","@rc5"]
                            
                            @exam=Exam.new(:preguntas => @examen, :respuescorrectas => arrayRespuestasCorrectas)
                            
                            
                            
                            
                             
                            @interfaz=Interfaz.new(:examen => @examen)
                           
                          
                        end
                        
                        it "Debe tener un examen" do
                          expect(@interfaz).instance_of?(Interfaz)
                          expect(@exam.class).to eq(Exam)
                          
                        end
                        
                        it "Debe de mostrar el examen al usuario" do
                            expect(@interfaz.to_s).to eq(@p1.to_s+"\n"+@p2.to_s+"\n"+@p3.to_s+"\n"+@p4.to_s+"\n"+@p5.to_s+"\n")
                    
                        end
                        
                        it "Se deben mostrar ordenadas las preguntas" do
                        
                         expect(@interfaz.to_s).to eq(@p1.to_s+"\n"+@p2.to_s+"\n"+@p3.to_s+"\n"+@p4.to_s+"\n"+@p5.to_s+"\n")
                        
                        end
                        
                        
                        
                    end    
                context "Quiz DSL" do
                
                    before :all do
                         @examen=Lista.new(0)
                         #@p1=EleccionSimple.new(:valor => "0",:enunciado =>"¿Cuantos argumentos de tipo bloque puede recibir un metodo?",:respuesta =>"1",:falsas => ["2", "muchos","los que defina el usuario"])
                         @p2=Verdaderofalso.new(:valor => "0",:enunciado =>"En Ruby los bloque son objetos que continen codigo",:respuesta =>"Cierto",:falsas => "[0]")    
                         
                         @nodo1=Nodo.new(@p1)
                         @nodo2=Nodo.new(@p2)
                         
                         @examen.pushf(@nodo2)
                         #@examen.push(@nodo1)
                         @exam=Interfaz.new(:examen=>@examen)
                         
                         @quiz = Quiz2.new ("Examen"){
                             
                             
                            # pregunta1 '¿Cuantos argumentos de tipo bloque puede recibir un metodo?' ,
                            # :respuesta => "1",
                            # #:falsas => []
                            # :falsas =>'2',
                            # :falsas =>'muchos',
                            # :falsas =>'los que defina el usuario'
                            
                            pregunta1 "En Ruby los bloque son objetos que continen codigo",
                             :respuesta => 'Falso',
                             :falsas => 'Cierto'
                             
                             
                             
                      
                        }
                    
                    
                    
                    end 
                    
                     it " DSL " do
                         expect(@exam.to_s).to eq(@quiz.to_s)
                         #expect(@quiz.to_s).to eq(@quiz.to_s)
                    end
                    
                    
                    
                end    
                    
        end
                
                
                
                
                
                
                
                
                
                
     end 
end    

 
 