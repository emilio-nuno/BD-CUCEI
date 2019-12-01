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
        
