# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
MODULE_AUTHOR="SCHNUECK"
inherit perl-module

DESCRIPTION="fetching weather information from weather.com site"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-perl/libwww-perl
		perl-core/Storable
		dev-perl/Time-Format
		virtual/perl-Time-Local
		dev-perl/URI
		dev-perl/XML-Simple
		virtual/perl-Module-Build"
RDEPEND="${DEPEND}"
SRC_TEST="do"
