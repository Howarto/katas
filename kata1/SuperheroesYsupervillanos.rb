#Establezco arrays que contendrán a los buenos y a los malos para al final contarlos
@buenos = []
@malos = []

#Cuento a los héroes y villanos y muestro por terminal
def contar
	puts "#{@buenos.count} héroes"
	puts "#{@malos.count} villanos"
end

#No sabía lo que significa lo de "bst", así que leo el archivo y establezco un array con todos los nombres dentro
def volcar_a_bst
	file = File.open("registrados.dat", "r")
	@array = file.readlines
end

#Recorro todo el array mencionado anteriormente, añado condición de si lleva s o S para diferenciar y lo escribo en uno de dos archivos
def volcar_a_ficheros(todos)
	todos.each do |person|
	  if person.scan(/s|S/).empty?
	  	File.open("malos.dat", "a") do |mal|
	  	  mal.puts person
	  	  @malos << person
	    end

	  else
	  	File.open("buenos.dat", "a") do |buen|
	  	  buen.puts person
	  	  @buenos << person
	  	end
	  end
	end
end

#Ejecuto las funciones
volcar_a_bst
volcar_a_ficheros(@array)
contar
