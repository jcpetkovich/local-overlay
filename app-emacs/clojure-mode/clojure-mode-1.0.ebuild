# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit elisp

DESCRIPTION="An Emacs major mode for editing Clojure"
HOMEPAGE="http://www.emacswiki.org/cgi-bin/wiki/ClojureMode"
SRC_URI="http://www.emacswiki.org/emacs/download/clojure-mode.el"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

SITEFILE="70${PN}-gentoo.el"

src_unpack() {
    cp /usr/portage/distfiles/${A} ${WORKDIR}
}
# S="${WORKDIR}"
