# cdj-common

#### An unofficial portage repository for tools and libraries used in all of my Gentoo systems.

To install:
```
eselect repository add cdj-common git https://github.com/chadjoan/cdj-common-portage-repo.git
eix-sync
```

Ebuilds may be removed from this repository once portage complains about them
too much or they no longer build with modern toolchains/dependencies.
(I don't like to remove ebuilds as much as the Gentoo devs do, but I also
don't have the time or ability to maintain ebuilds with old EAPI versions.)

