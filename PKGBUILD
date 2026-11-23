# Maintainer: Mackenzie Criswell <m@makc.co>
pkgname=fortune-json
pkgver=0.0.1
pkgrel=1
pkgdesc="Print a random quote and author from a JSON file"
arch=('any')
url="https://github.com/makccr/fortune-json"   # change later
license=('gpl')
depends=('jq')
optdepends=(
  'cowsay: optional cow version'
  'cowfortune: optional cowfortune integration'
)
source=("$pkgname")
sha256sums=('SKIP')   # replace with real checksum later

package() {
  install -Dm755 "$srcdir/$pkgname" "$pkgdir/usr/bin/fortune-json"
}
