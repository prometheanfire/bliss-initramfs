# Copyright (C) 2012, 2013 Jonathan Vasquez <jvasquez1011@gmail.com>
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Toggle Flags
_USE_ZFS="1"
_USE_MODULES="1"

# Set the kernel we will be using here
do_kernel

# Required Binaries, Modules, and other files
_ZFS_BINS="${_USR_BIN}/hostid \
	   ${_SBIN}/fsck.zfs \
	   ${_SBIN}/mount.zfs \
	   ${_SBIN}/zdb \
	   ${_SBIN}/zfs \
	   ${_SBIN}/zhack \
	   ${_SBIN}/zinject \
	   ${_SBIN}/zpios \
	   ${_SBIN}/zpool \
	   ${_SBIN}/zstreamdump \
	   ${_SBIN}/ztest"

_ZFS_MODS="${_MODULES}/extra/spl/spl.ko \
	   ${_MODULES}/extra/avl/zavl.ko \
	   ${_MODULES}/extra/nvpair/znvpair.ko \
	   ${_MODULES}/extra/unicode/zunicode.ko \
	   ${_MODULES}/extra/zcommon/zcommon.ko \
	   ${_MODULES}/extra/zfs/zfs.ko"

_ZFS_MAN="${_MAN}/man1/zhack.1.bz2 \
          ${_MAN}/man1/zpios.1.bz2 \
          ${_MAN}/man1/ztest.1.bz2 \
          ${_MAN}/man5/vdev_id.conf.5.bz2 \
          ${_MAN}/man5/zpool-features.5.bz2 \
          ${_MAN}/man8/fsck.zfs.8.bz2 \
          ${_MAN}/man8/mount.zfs.8.bz2 \
	  ${_MAN}/man8/vdev_id.8.bz2 \
	  ${_MAN}/man8/zdb.8.bz2 \
	  ${_MAN}/man8/zfs.8.bz2 \
          ${_MAN}/man8/zinject.8.bz2 \
	  ${_MAN}/man8/zpool.8.bz2 \
	  ${_MAN}/man8/zstreamdump.8.bz2"

_ZFS_UDEV="${_UDEV}/rules.d/60-zvol.rules \
	   ${_UDEV}/rules.d/69-vdev.rules \
	   ${_UDEV}/rules.d/90-zfs.rules \
	   ${_UDEV}/vdev_id \
	   ${_UDEV}/zvol_id"