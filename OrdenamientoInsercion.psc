Algoritmo OrdenamientoInsercion
    Definir n, temp, j Como Entero
    Definir vector[100] Como Entero
    
    Escribir "Ingrese la cantidad de elementos del vector: "
    Leer n
    
    Escribir "Ingrese los elementos del vector: "
    Para i = 1 Hasta n
        Leer vector[i]
    FinPara
    
    Para i = 2 Hasta n
        temp = vector[i]
        j = i - 1
        
        Mientras j > 0 Y vector[j] > temp
            vector[j + 1] = vector[j]
            j = j - 1
        FinMientras
        
        vector[j + 1] = temp
    FinPara
    
    Escribir "El vector ordenado es: "
    Para i = 1 Hasta n
        Escribir vector[i]
    FinPara
FinAlgoritmo
