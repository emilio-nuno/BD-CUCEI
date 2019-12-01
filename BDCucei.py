# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'BDCucei.ui'
#
# Created by: PyQt5 UI code generator 5.13.2
#
# WARNING! All changes made in this file will be lost!


from PyQt5 import QtCore, QtGui, QtWidgets
from funciones_crud import Almacen

#Mete tu contra aquí
password = ""

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(800, 600)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.pestanasBD = QtWidgets.QTabWidget(self.centralwidget)
        self.pestanasBD.setGeometry(QtCore.QRect(0, 0, 800, 600))
        self.pestanasBD.setMinimumSize(QtCore.QSize(800, 600))
        self.pestanasBD.setObjectName("pestanasBD")
        self.almacen = QtWidgets.QWidget()
        self.almacen.setToolTip("")
        self.almacen.setAccessibleName("")
        self.almacen.setAccessibleDescription("")
        self.almacen.setObjectName("almacen")
        self.formLayoutWidget = QtWidgets.QWidget(self.almacen)
        self.formLayoutWidget.setGeometry(QtCore.QRect(170, 120, 401, 281))
        self.formLayoutWidget.setObjectName("formLayoutWidget")
        self.formLayout = QtWidgets.QFormLayout(self.formLayoutWidget)
        self.formLayout.setContentsMargins(0, 0, 0, 0)
        self.formLayout.setObjectName("formLayout")
        self.label = QtWidgets.QLabel(self.formLayoutWidget)
        self.label.setObjectName("label")
        self.formLayout.setWidget(0, QtWidgets.QFormLayout.LabelRole, self.label)
        self.label_2 = QtWidgets.QLabel(self.formLayoutWidget)
        self.label_2.setObjectName("label_2")
        self.formLayout.setWidget(1, QtWidgets.QFormLayout.LabelRole, self.label_2)
        self.label_3 = QtWidgets.QLabel(self.formLayoutWidget)
        self.label_3.setObjectName("label_3")
        self.formLayout.setWidget(2, QtWidgets.QFormLayout.LabelRole, self.label_3)
        self.label_4 = QtWidgets.QLabel(self.formLayoutWidget)
        self.label_4.setObjectName("label_4")
        self.formLayout.setWidget(3, QtWidgets.QFormLayout.LabelRole, self.label_4)
        self.txtCapacidad = QtWidgets.QLineEdit(self.formLayoutWidget)
        self.txtCapacidad.setObjectName("txtCapacidad")
        self.formLayout.setWidget(1, QtWidgets.QFormLayout.FieldRole, self.txtCapacidad)
        self.txtNumLlenos = QtWidgets.QLineEdit(self.formLayoutWidget)
        self.txtNumLlenos.setObjectName("txtNumLlenos")
        self.formLayout.setWidget(2, QtWidgets.QFormLayout.FieldRole, self.txtNumLlenos)
        self.txtNumVacios = QtWidgets.QLineEdit(self.formLayoutWidget)
        self.txtNumVacios.setObjectName("txtNumVacios")
        self.formLayout.setWidget(3, QtWidgets.QFormLayout.FieldRole, self.txtNumVacios)
        self.btnAgregar = QtWidgets.QPushButton(self.formLayoutWidget)
        self.btnAgregar.setObjectName("btnAgregar")
        self.formLayout.setWidget(4, QtWidgets.QFormLayout.FieldRole, self.btnAgregar)
        self.btnMostrar = QtWidgets.QPushButton(self.formLayoutWidget)
        self.btnMostrar.setObjectName("btnMostrar")
        self.formLayout.setWidget(5, QtWidgets.QFormLayout.FieldRole, self.btnMostrar)
        self.btnEditar = QtWidgets.QPushButton(self.formLayoutWidget)
        self.btnEditar.setObjectName("btnEditar")
        self.formLayout.setWidget(6, QtWidgets.QFormLayout.FieldRole, self.btnEditar)
        self.btnEliminar = QtWidgets.QPushButton(self.formLayoutWidget)
        self.btnEliminar.setObjectName("btnEliminar")
        self.formLayout.setWidget(7, QtWidgets.QFormLayout.FieldRole, self.btnEliminar)
        self.txtIdAlmacen = QtWidgets.QLineEdit(self.formLayoutWidget)
        self.txtIdAlmacen.setObjectName("txtIdAlmacen")
        self.formLayout.setWidget(0, QtWidgets.QFormLayout.FieldRole, self.txtIdAlmacen)
        self.pestanasBD.addTab(self.almacen, "")
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 800, 26))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        self.pestanasBD.setCurrentIndex(0)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)
        
        ###AREA DE FUNCIONES
        almacen = Almacen(self, password)
        self.btnMostrar.clicked.connect(lambda: almacen.mostrarAlmacen(self.txtIdAlmacen.text()))

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.label.setText(_translate("MainWindow", "idAlmacen"))
        self.label_2.setText(_translate("MainWindow", "capacidad"))
        self.label_3.setText(_translate("MainWindow", "numLlenos"))
        self.label_4.setText(_translate("MainWindow", "numVacios"))
        self.btnAgregar.setText(_translate("MainWindow", "Agregar"))
        self.btnMostrar.setText(_translate("MainWindow", "Mostrar"))
        self.btnEditar.setText(_translate("MainWindow", "Editar"))
        self.btnEliminar.setText(_translate("MainWindow", "Eliminar"))
        self.pestanasBD.setTabText(self.pestanasBD.indexOf(self.almacen), _translate("MainWindow", "Almacén"))

if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())
