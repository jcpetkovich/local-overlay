# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit elisp git

DESCRIPTION="An Emacs major mode for editing Clojure"
HOMEPAGE="http://www.emacswiki.org/cgi-bin/wiki/ClojureMode"
SRC_URI=""
EGIT_REPO_URI="git://github.com/jochu/clojure-mode.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

MY_P="${PN}${SLOT}-${PV}"

SITEFILE="70${PN}-gentoo.el"

S=${WORKDIR}/${MY_P}

src_unpack() {
    git_src_unpack
    cd "${S}"
    rm clojure-test-mode.el test.clj
    # cp /usr/portage/distfiles/${A} ${WORKDIR}
}
# S="${WORKDIR}"
