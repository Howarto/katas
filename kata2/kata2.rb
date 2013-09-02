require 'cmath'
include Math

#Recuerda que una cuadrática completa sigue la fórmula de => ax² + bx + c = 0
def polinomio(a,b,c)
  #Secuencia para cuando no es cuadrática, sólo una solución
  if a == 0
  	if b == 0
  	  sol1 = c
  	  sol2 = nil
      return sol1, sol2
  	else
  	  sol1 = (-c)/b
  	  sol2 = nil
      return sol1, sol2
  	end
  #Secuencia para cuadrática
  else
    #Siguiendo el ejemplo de => ax² + c = 0
  	if b == 0 and c < 0
  	  sol1 = sqrt(-c)
  	  sol2 = -sqrt(-c)
      return sol1, sol2
    #Igual pero con número imaginario, ya que sale raíz negativa  
  	elsif b == 0 and c > 0
      cuenta = CMath.sqrt((-c)/a)
      sol1 = cuenta
      sol2 = -cuenta
      return sol1, sol2
    #Siguiendo ejemplo con número imaginario de => ax²+bx+c=0
    elsif ((b**2) - (4*a*c)) < 0
      sol1 = Complex(((-b) / (2*a)), sqrt(-((b**2) - (4*a*c))) / (2*a))
      sol2 = Complex(((-b) / (2*a)), -sqrt(-((b**2) - (4*a*c))) / (2*a))
      return sol1, sol2
    #Igual pero sin número imaginario
    else
    sol1 = (-b + sqrt(((b**2) - (4*a*c)))) / (2*a) 
    sol2 = (-b - sqrt(((b**2) - (4*a*c)))) / (2*a) 
    return sol1, sol2
    end

  return sol1, sol2  
  end
end

#pruebas, se mira haciendo desde terminal y en la ruta un irb [nombre_archivo]
polinomio(4,0,4)
polinomio(0,0,0)
polinomio(0,2,4)
polinomio(2,4,2)
polinomio(6,2,6)
polinomio(3,3,0)