import mysql.connector

class Almacen:
    def __init__(self, interfaz, password, user = "root"):
        self.interfaz = interfaz
        self.ctx = mysql.connector.connect(user = user, password = password, host = "localhost", database = "bdcucei")
        
    def mostrarAlmacen(self, idAlmacen):
        cursor = self.ctx.cursor() #Generamos objeto cursor
        
        cursor.execute(f"select * from almacen where idAlmacen = {idAlmacen}")
        tuplas = cursor.fetchall()
        
        self.interfaz.txtCapacidad.setText(str(tuplas[0][1]))
        self.interfaz.txtNumLlenos.setText(str(tuplas[0][2]))
        self.interfaz.txtNumVacios.setText(str(tuplas[0][3]))
        
        cursor.close()
        
    def agregarAlmacen(self):
        cursor = self.ctx.cursor()
        #Verificamos que la suma de llenos y vacíos no supere la capacidad
        if((int(self.interfaz.txtNumLlenos.text()) + int(self.interfaz.txtNumVacios.text())) > int(self.interfaz.txtCapacidad.text())):
            print("No se puede")
        else:
            valores = (self.interfaz.txtCapacidad.text(), self.interfaz.txtNumLlenos.text(), self.interfaz.txtNumVacios.text())
            sql = "INSERT INTO almacen (capacidad, numLlenos, numVacios) VALUES (%s, %s, %s)"
            cursor.execute(sql % valores)
            self.ctx.commit()
    
    def __del__(self):
        self.ctx.close() #Cerramos la conexión cuando se deje de usar el objeto
        
