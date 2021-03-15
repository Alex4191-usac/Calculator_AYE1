include makr.asm; macros FILE
.model small
.stack 
.data
  header_1 db 10,"UNIVERSIDAD SAN CARLOS DE GUATEMALA",10,"FACULTAD DE INGENIERIA",10,"ESCUELA DE CIENCIAS Y SISTEMAS",10,"ARQUITECTURA DE COMPUTADORAS Y ENSAMBLADORES 1",10,"SECCION: B",10,"PRIMER SEMESTRE 2021",10,"NOMBRE: BRYAN PORTILLO",10,"ID: 201602880",10,"PRIMERA PRACTICA DE ASSEMBLER",10,'$'
  mainMenu db 10,9,"Opciones del Menu Principal",10,10,9,9," 1.Cargar Archivo",10,9,9," 2.Modo Calculadora",10,9,9," 3.Factorial",10,9,9, " 4.Crear Reporte",10,9,9, " 5.Salir",10,10,9, "Ingrese una opcion: ",'$'
.code

  main proc
      print header_1
      print mainMenu

      main_menu:
        getChar
        cmp al, 31h ; if getChar is == 1
        je load_file
        cmp al, 32h ; if getChar is == 2
        je calculator      
        cmp al, 33h ; if getChar is ==3
        je Factorial
        cmp al, 34h ; if getChar is ==4
        je Report
        cmp al, 35h ; if getChar is == 5
        je salir

      cargar_archivo:


      salir:
          mov ah, 4ch
          xor al, al
          int 21h

  main endp

end main