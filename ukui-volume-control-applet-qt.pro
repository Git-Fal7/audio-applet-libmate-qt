######################################################################
# Automatically generated by qmake (3.1) Fri Oct 11 17:35:00 2019
######################################################################

QT  += core gui dbus KWindowSystem xml

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = app
TARGET = ukui-volume-control-applet-qt
INCLUDEPATH += .
QMAKE_CXXFLAGS += -std=c++11

include(QtSingleApplication/qtsingleapplication.pri)

DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
target.path = /usr/bin

CONFIG += \
    c++11 \
    no_keywords link_pkgconfig debug\

PKGCONFIG += \
    glib-2.0 \
    libmatemixer \
    gsettings-qt \
    Qt5Svg  \
    gio-2.0 \
    Qt5Multimedia \
    dconf \
    x11 \
    libcanberra \
    libpulse \
    libpulse-mainloop-glib \
    alsa
#    libwnck-1.0

#LIBS += -lukui-log4qt

HEADERS += \
    customstyle.h \
    ukmedia_custom_sound.h \
    ukmedia_device_switch_widget.h \
    ukmedia_device_volume_widget.h \
    ukmedia_mini_master_volume_widget.h \
    ukmedia_application_volume_widget.h \
    ukmedia_monitor_window_thread.h \
    ukmedia_osd_display_widget.h \
    ukmedia_slider_tip_label_helper.h \
    ukmedia_volume_slider.h \
    ukui_media_set_headset_widget.h

SOURCES += \
    customstyle.cpp \
    main.cpp \
    ukmedia_custom_sound.cpp \
    ukmedia_device_switch_widget.cpp \
    ukmedia_device_volume_widget.cpp\
    ukmedia_application_volume_widget.cpp \
    ukmedia_mini_master_volume_widget.cpp \
    ukmedia_monitor_window_thread.cpp \
    ukmedia_osd_display_widget.cpp \
    ukmedia_slider_tip_label_helper.cpp \
    ukmedia_volume_slider.cpp \
    ukui_media_set_headset_widget.cpp

RESOURCES += \
    res.qrc

TRANSLATIONS += \
    translations/zh_CN.ts \
    translations/tr.ts \
    translations/bo.ts

system("lrelease translations/*.ts")

qm_file.files = translations/*.qm
qm_file.path = $${PREFIX}/translations/

data_files.files = data/*
data_files.path = $${PREFIX}/

INSTALLS += \
    target qm_file data_files
