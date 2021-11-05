# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit cmake
SRC_URI="https://github.com/justdan96/tsMuxer/archive/nightly-2021-04-30-02-13-20.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~x86"
S="${WORKDIR}/tsMuxer-nightly-2021-04-30-02-13-20"


DESCRIPTION="Transport Stream muxer"
HOMEPAGE="https://github.com/justdan96/tsMuxer"

LICENSE="Apache"
SLOT="0"
IUSE=""

DEPEND="
	dev-util/ninja
	dev-util/cmake
	virtual/libc
	media-libs/freetype
	sys-libs/zlib
"
RDEPEND="${DEPEND}"


PATCHES=(
)

src_configure() {
	local mycmakeargs=(
	)

	cmake_src_configure
}

src_install() {
	cmake_src_install

}
