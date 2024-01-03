Algoritmo Mergesort
    Procedimiento Ordenar(inicio, fin)
        Si inicio < fin Entonces
            medio = (inicio + fin) / 2
            Ordenar(inicio, medio)
            Ordenar(medio + 1, fin)
            Combinar(inicio, medio, fin)
        FinSi
    FinProcedimiento
    
    Procedimiento Combinar(inicio, medio, fin)
        Definir i, j, k, n1, n2 Como Entero
        n1 = medio - inicio + 1
        n2 = fin - medio
        
        Definir Izquierda[50] Como Entero
        Definir Derecha[50] Como Entero
        
        // Copiar datos a los arreglos temporales Izquierda[] y Derecha[]
        Para i = 1 Hasta n1
            Izquierda[i] = vector[inicio + i - 1]
        FinPara
        Para j = 1 Hasta n2
            Derecha[j] = vector[medio + j]
        FinPara
        
        // Combinar los arreglos temporales de vuelta al vector[]
        i = 1
        j = 1
        k = inicio
        Mientras i <= n1 Y j <= n2
            Si Izquierda[i] <= Derecha[j] Entonces
                vector[k] = Izquierda[i]
                i = i + 1
            Sino
                vector[k] = Derecha[j]
                j = j + 1
            FinSi
            k = k + 1
        FinMientras
        
        // Copiar los elementos restantes de Izquierda[], si los hay
        Mientras i <= n1
            vector[k] = Izquierda[i]
            i = i + 1
            k = k + 1
        FinMientras
        
        // Copiar los elementos restantes de Derecha[], si los hay
        Mientras j <= n2
            vector[k] = Derecha[j]
            j = j + 1
            k = k + 1
        FinMientras
    FinProcedimiento
    
    Definir n Como Entero
    Definir vector[100] Como Entero
    
    Escribir "Ingrese la cantidad de elementos del vector: "
    Leer n
    
    Escribir "Ingrese los elementos del vector: "
    Para i = 1 Hasta n
        Leer vector[i]
    FinPara
    
    // Llamar a la función Mergesort para ordenar el vector
    Ordenar(1, n)
    
   
    Escribir "El vector ordenado es: "
    Para i = 1 Hasta n
        Escribir vector[i]
    FinPara
FinAlgoritmo
