#ertugerata/pisi-chroot-farm
FROM ertugerata/pisi-chroot-farm
LABEL maintainer Ertuğrul Erata <ertugrulerata@gmail.com>

COPY . /tmp/iso-work

RUN service dbus start &&  pisi it --ignore-safety python-qt5 pyqtermwidget5 syslinux cdrkit squasfs-tools && service dbus stop

WORKDIR /tmp/iso-work
