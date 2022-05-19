pkgname=audio-applet-libmate-qt
pkgver=3.0.3.1
pkgrel=2
pkgdesc="UKUI media utilities"
arch=('x86_64')
license=('GPL')
url="https://github.com/ukui/ukui-media"
#groups=('ukui')
depends=('gsettings-qt' 'kwindowsystem' 'libmatemixer' 'libqtxdg' 'qt5-multimedia' 'qt5-svg' 'libcanberra')
makedepends=('qt5-tools')
source=("pkgname::git+https://github.com/git-fal7/audio-applet-libmate-qt")
#source=("$pkgname-$pkgver.tar.gz::https://github.com/ukui/ukui-media/archive/v$pkgver.tar.gz")
#sha512sums=('920d5988467b26626903a393cf3e336fbb62b8d4c3c0518939fd7316e6d26260d23227ee26267e575b6fb3f137721243c7ebb32c9514f72ab2a5f55b598c91ce')

build() {
  cd $pkgname

  qmake PREFIX=/usr/share/audio-applet-libmate-qt
  make INSTALL_ROOT="$pkgdir" install
}

package() {
  cd $pkgname
  make INSTALL_ROOT="$pkgdir" install
}
