# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'interface.ui'
##
## Created by: Qt User Interface Compiler version 6.11.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide6.QtCore import (QCoreApplication, QDate, QDateTime, QLocale,
    QMetaObject, QObject, QPoint, QRect,
    QSize, QTime, QUrl, Qt)
from PySide6.QtGui import (QBrush, QColor, QConicalGradient, QCursor,
    QFont, QFontDatabase, QGradient, QIcon,
    QImage, QKeySequence, QLinearGradient, QPainter,
    QPalette, QPixmap, QRadialGradient, QTransform)
from PySide6.QtWidgets import (QApplication, QHBoxLayout, QLabel, QListWidget,
    QListWidgetItem, QMainWindow, QPushButton, QSizePolicy,
    QSlider, QSpacerItem, QVBoxLayout, QWidget)

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        if not MainWindow.objectName():
            MainWindow.setObjectName(u"MainWindow")
        MainWindow.resize(600, 450)
        self.centralwidget = QWidget(MainWindow)
        self.centralwidget.setObjectName(u"centralwidget")
        self.verticalLayout = QVBoxLayout(self.centralwidget)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.label = QLabel(self.centralwidget)
        self.label.setObjectName(u"label")
        self.label.setAlignment(Qt.AlignmentFlag.AlignCenter)

        self.verticalLayout.addWidget(self.label)

        self.lista_musicas = QListWidget(self.centralwidget)
        self.lista_musicas.setObjectName(u"lista_musicas")

        self.verticalLayout.addWidget(self.lista_musicas)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.label_tempo_atual = QLabel(self.centralwidget)
        self.label_tempo_atual.setObjectName(u"label_tempo_atual")

        self.horizontalLayout.addWidget(self.label_tempo_atual)

        self.slider_posicao = QSlider(self.centralwidget)
        self.slider_posicao.setObjectName(u"slider_posicao")
        self.slider_posicao.setOrientation(Qt.Orientation.Horizontal)

        self.horizontalLayout.addWidget(self.slider_posicao)

        self.label_tempo_total = QLabel(self.centralwidget)
        self.label_tempo_total.setObjectName(u"label_tempo_total")

        self.horizontalLayout.addWidget(self.label_tempo_total)


        self.verticalLayout.addLayout(self.horizontalLayout)

        self.verticalSpacer = QSpacerItem(20, 40, QSizePolicy.Policy.Minimum, QSizePolicy.Policy.Minimum)

        self.verticalLayout.addItem(self.verticalSpacer)

        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.btn_abrir = QPushButton(self.centralwidget)
        self.btn_abrir.setObjectName(u"btn_abrir")
        icon = QIcon(QIcon.fromTheme(QIcon.ThemeIcon.DocumentOpen))
        self.btn_abrir.setIcon(icon)

        self.horizontalLayout_2.addWidget(self.btn_abrir)

        self.horizontalSpacer = QSpacerItem(40, 20, QSizePolicy.Policy.Minimum, QSizePolicy.Policy.Minimum)

        self.horizontalLayout_2.addItem(self.horizontalSpacer)

        self.btn_retroceder = QPushButton(self.centralwidget)
        self.btn_retroceder.setObjectName(u"btn_retroceder")

        self.horizontalLayout_2.addWidget(self.btn_retroceder)

        self.btn_play = QPushButton(self.centralwidget)
        self.btn_play.setObjectName(u"btn_play")

        self.horizontalLayout_2.addWidget(self.btn_play)

        self.btn_pause = QPushButton(self.centralwidget)
        self.btn_pause.setObjectName(u"btn_pause")

        self.horizontalLayout_2.addWidget(self.btn_pause)

        self.btn_parar = QPushButton(self.centralwidget)
        self.btn_parar.setObjectName(u"btn_parar")

        self.horizontalLayout_2.addWidget(self.btn_parar)

        self.btn_avancar = QPushButton(self.centralwidget)
        self.btn_avancar.setObjectName(u"btn_avancar")

        self.horizontalLayout_2.addWidget(self.btn_avancar)


        self.verticalLayout.addLayout(self.horizontalLayout_2)

        self.verticalSpacer_2 = QSpacerItem(20, 40, QSizePolicy.Policy.Minimum, QSizePolicy.Policy.Minimum)

        self.verticalLayout.addItem(self.verticalSpacer_2)

        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.label_4 = QLabel(self.centralwidget)
        self.label_4.setObjectName(u"label_4")

        self.horizontalLayout_3.addWidget(self.label_4)

        self.slider_volume = QSlider(self.centralwidget)
        self.slider_volume.setObjectName(u"slider_volume")
        self.slider_volume.setOrientation(Qt.Orientation.Horizontal)

        self.horizontalLayout_3.addWidget(self.slider_volume)


        self.verticalLayout.addLayout(self.horizontalLayout_3)

        MainWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(MainWindow)

        QMetaObject.connectSlotsByName(MainWindow)
    # setupUi

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QCoreApplication.translate("MainWindow", u"MainWindow", None))
        self.label.setText(QCoreApplication.translate("MainWindow", u"Nenhuma m\u00fasica encontrada", None))
        self.label_tempo_atual.setText(QCoreApplication.translate("MainWindow", u"00:00", None))
        self.label_tempo_total.setText(QCoreApplication.translate("MainWindow", u"00:00", None))
        self.btn_abrir.setText("")
        self.btn_retroceder.setText("")
        self.btn_play.setText("")
        self.btn_pause.setText("")
        self.btn_parar.setText("")
        self.btn_avancar.setText("")
        self.label_4.setText(QCoreApplication.translate("MainWindow", u"Volume", None))
    # retranslateUi

