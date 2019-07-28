#ertugerata/pisi-chroot-farm
FROM ertugerata/pisi-chroot-farm
LABEL maintainer Ertuğrul Erata <ertugrulerata@gmail.com>

RUN service dbus start &&  pisi it --ignore-safety python-qt5 pyqtermwidget5 syslinux cdrkit squasfstools && service dbus stop



WORKDIR /root
