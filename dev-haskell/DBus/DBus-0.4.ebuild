# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit base haskell-cabal autotools

DESCRIPTION="Efficient Arrays"
HOMEPAGE="http://code.haskell.org/vector"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

HASKELLDEPS="dev-haskell/primitive"
RDEPEND=">=dev-lang/ghc-6.10.4
		${HASKELLDEPS}"
DEPEND=">=dev-haskell/cabal-1.2
        >=sys-apps/dbus-0.60
		${RDEPEND}"

src_configure() {
  econf
  haskell-cabal_src_configure
} 

src_compile() {
	eautoreconf
	haskell-cabal_src_compile
}
