# Apache HTTP Server (Vanilla) on CentOS 7.
# Copyright (C) 2017-2018 Rodrigo Martínez <dev@brunneis.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

FROM centos:7.4.1708
MAINTAINER "Rodrigo Martínez" <dev@brunneis.com>

################################################
# APACHE HTTP SERVER
################################################

ENV HTTPD_VERSION 2.4.29
ENV HTTPD_ARCHIVE httpd-$HTTPD_VERSION.tar.gz
ENV HTTPD_ARCHIVE_URL https://dist.apache.org/repos/dist/release/httpd/$HTTPD_ARCHIVE
ENV HTTPD_SHA1_URL $HTTPD_ARCHIVE_URL.sha1

ENV BUILD_PACKAGES \
    wget \
    apr-devel \
    apr-util-devel \
    pcre-devel \
    make \
    gcc

RUN \
	yum -y update \
	&& yum -y install \
		ca-certificates \
	    apr \
	    apr-util \
		$BUILD_PACKAGES \
	&& wget $HTTPD_ARCHIVE_URL \
	&& wget $HTTPD_SHA1_URL  \
	&& sha1sum -c $HTTPD_ARCHIVE.sha1 \
	&& mkdir /opt/httpd-src \
	&& tar xvf $HTTPD_ARCHIVE -C /opt \
	&& rm -f $HTTPD_ARCHIVE \
	&& rm -f $HTTPD_ARCHIVE.sha1 \
	&& cd /opt/httpd* \
	&& mkdir /opt/httpd \
	&& ./configure --prefix=/opt/httpd \
	&& make \
	&& make install \
	&& yum -y remove $BUILD_PACKAGES \
	&& yum clean all

ENV PATH /opt/httpd/bin:$PATH

# Data volume
VOLUME ["/opt/httpd/htdocs"]

EXPOSE 80

COPY entrypoint.sh /
ENTRYPOINT ["bash", "/entrypoint.sh"]
