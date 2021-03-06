# ******************** generated by varnish_installer.rb ********************
echo '[34m******************** installing Varnish 3.0.4 [0m'

apt-get install -y autotools-dev automake1.9 autoconf pkg-config libtool libncurses-dev libpcre3-dev python-docutils xsltproc groff-base
mkdir -p /var/tmp/varnish
cd /var/tmp/varnish

if [ ! -d varnish ]; then
  git clone --progress --recursive git://github.com/varnish/Varnish-Cache.git varnish
fi

cd varnish

git fetch
git checkout varnish-3.0.4

#make clean
nice ./autogen.sh
nice ./configure --prefix=/usr/local --sysconfdir=/etc --localstatedir=/var/lib
umask 022  # because our default umask is stupid
nice make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD statsd [0m'

cd /var/tmp/varnish
if [ ! -d libvmod-statsd ]; then
  git clone https://github.com/jib/libvmod-statsd.git
fi
cd libvmod-statsd
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD timers [0m'

cd /var/tmp/varnish
if [ ! -d libvmod-timers ]; then
  git clone https://github.com/jib/libvmod-timers.git
fi
cd libvmod-timers
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD curl [0m'
apt-get install -y libcurl4-openssl-dev

cd /var/tmp/varnish
if [ ! -d libvmod-curl ]; then
  git clone https://github.com/varnish/libvmod-curl.git
fi
cd libvmod-curl
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD ipcast [0m'

cd /var/tmp/varnish
if [ ! -d libvmod-ipcast ]; then
  git clone https://github.com/lkarsten/libvmod-ipcast.git
fi
cd libvmod-ipcast
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD throttle [0m'

cd /var/tmp/varnish
if [ ! -d libvmod-throttle ]; then
  git clone https://github.com/nand2/libvmod-throttle.git
fi
cd libvmod-throttle
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD var [0m'

cd /var/tmp/varnish
if [ ! -d libvmod-var ]; then
  git clone https://github.com/varnish/libvmod-var.git
fi
cd libvmod-var
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD memcached [0m'
apt-get install -y libmemcached-dev

cd /var/tmp/varnish
if [ ! -d libvmod-memcached ]; then
  git clone https://github.com/sodabrew/libvmod-memcached.git
fi
cd libvmod-memcached
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD digest [0m'
apt-get install -y libmhash-dev

cd /var/tmp/varnish
if [ ! -d libvmod-digest ]; then
  git clone https://github.com/varnish/libvmod-digest.git
fi
cd libvmod-digest
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD shield [0m'

cd /var/tmp/varnish
if [ ! -d libvmod-shield ]; then
  git clone https://github.com/varnish/libvmod-shield.git
fi
cd libvmod-shield
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD threescale [0m'

cd /var/tmp/varnish
if [ ! -d libvmod-3scale ]; then
  git clone https://github.com/3scale/libvmod-3scale.git
fi
cd libvmod-3scale
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD cookie [0m'

cd /var/tmp/varnish
if [ ! -d libvmod-cookie ]; then
  git clone https://github.com/lkarsten/libvmod-cookie.git
fi
cd libvmod-cookie
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD urlcode [0m'

cd /var/tmp/varnish
if [ ! -d libvmod-urlcode ]; then
  git clone https://github.com/fastly/libvmod-urlcode.git
fi
cd libvmod-urlcode
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD timeutils [0m'

cd /var/tmp/varnish
if [ ! -d libvmod-timeutils ]; then
  git clone https://github.com/jthomerson/libvmod-timeutils.git
fi
cd libvmod-timeutils
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD dgram [0m'

cd /var/tmp/varnish
if [ ! -d vmod_dgram ]; then
  git clone https://github.com/mmb/vmod_dgram.git
fi
cd vmod_dgram
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD parsereq [0m'

cd /var/tmp/varnish
if [ ! -d libvmod-parsereq ]; then
  git clone https://github.com/xcir/libvmod-parsereq.git
fi
cd libvmod-parsereq
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD header [0m'

cd /var/tmp/varnish
if [ ! -d libvmod-header ]; then
  git clone https://github.com/varnish/libvmod-header.git
fi
cd libvmod-header
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** installing VMOD geoip [0m'
apt-get install -y libgeoip-dev

cd /var/tmp/varnish
if [ ! -d libvmod-geoip ]; then
  git clone https://github.com/varnish/libvmod-geoip.git
fi
cd libvmod-geoip
git fetch
## in case the folder is not there
mkdir -p m4
./autogen.sh
./configure --prefix=/usr/local VARNISHSRC=/var/tmp/varnish/varnish VMODDIR=/usr/local/lib/varnish/vmods
umask 022  # because our default umask is stupid
make
make install DESTDIR=/tmp/varnish


echo '[34m******************** Generating DEB file [0m'
echo '[31m******************** It will be in the 'pkg' folder on the host system [0m'
printf '#!/bin/sh
ldconfig
' > /tmp/varnish/run-ldconfig.sh
mkdir -p /vagrant/pkg
cd /vagrant/pkg
fpm -s dir -t deb -n varnish-3.0.4 -v 3.0.4 -C /tmp/varnish  \
--after-install /tmp/varnish/run-ldconfig.sh  \
--force  \
-p varnish-VERSION.ubuntu.12.04_ARCH.deb  \
 -d 'libcurl4-openssl-dev (>= 7.22.0-3ubuntu4.11) '  -d 'libmemcached-dev (>= 0.44-1.1build1) '  -d 'libmhash-dev (>= 0.9.9.9-1) '  -d 'libgeoip-dev (>= 1.4.8+dfsg-2) '  \
usr/local/
