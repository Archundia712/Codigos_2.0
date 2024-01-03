Algoritmo Quicksort
    Procedimiento Ordenar(inicio, fin)
        Si inicio < fin Entonces
            pivote = Particionar(inicio, fin)
            Ordenar(inicio, pivote - 1)
            Ordenar(pivote + 1, fin)
        FinSi
    FinProcedimiento
    
    Funcion Particionar(inicio, fin)
        pivote = vector[fin]
        i = inicio - 1
        
        Para j = inicio Hasta fin - 1
            Si vector[j] <= pivote Entonces
                i = i + 1
                Intercambiar(i, j)
            FinSi
        FinPara
        
        Intercambiar(i + 1, fin)
        Devolver i + 1
    FinFuncion
    
    Procedimiento Intercambiar(a, b)
        temp = vector[a]
        vector[a] = vector[b]
        vector[b] = temp
    FinProcedimiento
    
    Definir n Como Entero
    Definir vector[100] Como Entero
    
    Escribir "Ingrese la cantidad de elementos del vector: "
    Leer n
    
    Escribir "Ingrese los elementos del vector: "
    Para i = 1 Hasta n
        Leer vector[i]
    FinPara
    
    
    Ordenar(1, n)
    

    Escribir "El vector ordenado es: "
    Para i = 1 Hasta n
        Escribir vector[i]
    FinPara
FinAlgoritmo
