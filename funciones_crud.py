import mysql.connector

class Almacen:
    def __init__(self, interfaz, password, user = "root"):
        self.interfaz = interfaz
        self.ctx = mysql.connector.connect(user = user, password = password, host = "localhost", database = "bdcucei")
        
    def mostrarAlmacen(self):
        idAlmacen = self.interfaz.txtIdAlmacen.text()
        cursor = self.ctx.cursor() #Generamos objeto cursor
        
        cursor.execute(f"SELECT * FROM almacen WHERE idAlmacen = {idAlmacen}")
        tuplas = cursor.fetchall()
        
        self.interfaz.txtCapacidad.setText(str(tuplas[0][1]))
        self.interfaz.txtNumLlenos.setText(str(tuplas[0][2]))
        self.interfaz.txtNumVacios.setText(str(tuplas[0][3]))
        
        cursor.close()
        
    def agregarAlmacen(self):
        cursor = self.ctx.cursor()
        #Verificamos que la suma de llenos y vacíos no supere la capacidad
        if((int(self.interfaz.txtNumLlenos.text()) + int(self.interfaz.txtNumVacios.text())) > int(self.interfaz.txtCapacidad.text())):
            print("El número de garrafones llenos y vacíos en el almacén no pueden superar la capacidad dada")
        else:
            valores = (self.interfaz.txtIdAlmacen.text(), self.interfaz.txtCapacidad.text(), self.interfaz.txtNumLlenos.text(), self.interfaz.txtNumVacios.text())
            sql = "INSERT INTO almacen (idAlmacen, capacidad, numLlenos, numVacios) VALUES (%s, %s, %s, %s)"
            cursor.execute(sql % valores)
            self.ctx.commit()
            
        cursor.close()
    
    def editarAlmacen(self):
        #Aqui editamos el numero de garrafones llenos, checamos si se puede restar el número a los llenos y actualizamos
        idAlmacen = self.interfaz.txtIdAlmacen.text()
        
        sql = "UPDATE almacen SET numVacios = %s , numLlenos = %s WHERE idAlmacen = %s"
        
        cursor = self.ctx.cursor()
        cursor.execute(f"SELECT * FROM almacen WHERE idAlmacen = {idAlmacen}")
        tuplas = cursor.fetchall()
        
        numVaciosDeseado = int(self.interfaz.txtNumVacios.text())
        
        numLlenosActual = int(tuplas[0][2])
        numVaciosActual = int(tuplas[0][3])
        
        if((numLlenosActual - numVaciosDeseado) >= 0):
            numLlenosActual -= numVaciosDeseado
            numVaciosDeseado += numVaciosActual
            valores = (numVaciosDeseado, numLlenosActual, idAlmacen)
            cursor.execute(sql, valores)
            self.ctx.commit()
        else:
            print("No es posible reportar este vaciado, porque se sale del rango actual")
        
        cursor.close()
    
    def eliminarAlmacen(self):
        #Aquí eliminamos registros y verificamos que el orden en la enumeración se mantenga
        cursor = self.ctx.cursor()
        idAlmacen = self.interfaz.txtIdAlmacen.text()
        cursor.execute(f"DELETE FROM almacen WHERE idAlmacen = {idAlmacen}")
        self.ctx.commit()
        cursor.close()
    
    def __del__(self):
        self.ctx.close() #Cerramos la conexión cuando se deje de usar el objeto
        
