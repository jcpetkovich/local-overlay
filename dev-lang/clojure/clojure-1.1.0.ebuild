# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
JAVA_PKG_IUSE="source"

inherit java-pkg-2 java-ant-2

DESCRIPTION="Clojure is a dynamic programming language that targets the Java Virtual Machine."
HOMEPAGE="http://clojure.org/"
SRC_URI="http://clojure.googlecode.com/files/clojure-${PV/_/-}.zip"

LICENSE="CPL-1.0 BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

RDEPEND=">=virtual/jre-1.5"
DEPEND=">=virtual/jdk-1.5"

S="${WORKDIR}/${P/_/-}"

java_prepare() {
	rm -v ${PN}.jar || die
}

src_install() {
	java-pkg_newjar ${P/_/-}.jar
	java-pkg_dolauncher  ${PN} --main clojure.main
	dodoc readme.txt || die "dodoc failed"
	use source && java-pkg_dosrc src/jvm/closure
}
