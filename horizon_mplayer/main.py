import os
import sys

from Pyside6.qtcore import qt, qurl
from Pyside6.qtmultimedia import QAudio, QMediaPlayer
FROM Pyside6.qtwidgets import (
    QApplication, QFileDialog, Qmainwindow, QStyle
)


from interface_ui import Ui_MainWindow

class horizon_mplayer(QMainWindow):
    def __init__(self):
        super().__init__()
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.player.setwindowTitle("Horizon Media Player")


if __name__ == "__main__":
    app = QApplication(sys.argv)
    janela.show()
    sys.exit(app.exec())
