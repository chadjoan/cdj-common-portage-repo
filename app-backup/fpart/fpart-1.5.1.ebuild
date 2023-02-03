# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools

DESCRIPTION="fpart & fpsync tools. fpart \"partitions\" file trees. fpsync is parallel rsync."
HOMEPAGE="https://github.com/martymac/fpart"
SRC_URI="https://github.com/martymac/fpart/archive/refs/tags/fpart-${PV}.tar.gz"

# This forces the package to be downloaded directly from SRC_URI, and
# not through a mirror. This is important at the time of this writing,
# because the package is currently not in the official portage tree, and thus
# the gentoo mirrors will not have the desired .tar.gz file.
# We must get the file directly from github.
RESTRICT="mirror"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack()
{
	default
	mv "${WORKDIR}/fpart-fpart-${PV}" "${WORKDIR}/fpart-${PV}"
}

src_prepare()
{
	default
	eautoreconf
}
