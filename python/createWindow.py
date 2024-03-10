import sys
from PySide6.QtWidgets import *

myApp = QApplication(sys.argv)

myWindow = QWidget()
myWindow.setWindowTitle('UVM自动化工具')
myWindow.resize(300,150)

myLabel = QLabel(myWindow)
myLabel.setText('输入信息')
myLabel.setGeometry(80,50,150,20)

myButton = QPushButton(myWindow)
myButton.setText("开始")
myButton.setGeometry(120,100,50,20)

myWindow.show()

sys.exit(myApp.exec())
