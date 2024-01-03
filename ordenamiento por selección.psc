Algoritmo OrdenamientoSeleccion
    Definir n, minimo, temp Como Entero
    Definir vector[100] Como Entero
    
    Escribir "Ingrese la cantidad de elementos del vector: "
    Leer n
    
    Escribir "Ingrese los elementos del vector: "
    Para i = 1 Hasta n
        Leer vector[i]
    FinPara
    
    Algoritmo de ordenamiento por selección
    Para i = 1 Hasta n-1
        minimo = i
        Para j = i + 1 Hasta n
            Si vector[j] < vector[minimo] Entonces
                minimo = j
            FinSi
        FinPara
        
        temp = vector[i]
        vector[i] = vector[minimo]
        vector[minimo] = temp
    FinPara
    
    Escribir "El vector ordenado es: "
    Para i = 1 Hasta n
        Escribir vector[i]
    FinPara
FinAlgoritmo
