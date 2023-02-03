# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools

DESCRIPTION="fpart & fpsync tools. fpart \"partitions\" file trees. fpsync is parallel rsync."
HOMEPAGE="https://github.com/martymac/fpart"
SRC_URI="https://github.com/martymac/fpart/archive/refs/tags/fpart-${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	default
	eautoreconf
}
