FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim

# Dependencies for libraries
RUN export DEBIAN_FRONTEND=noninteractive \
    && echo "Asia/Shanghai" > /etc/timezone \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apt-get update \
    && apt-get install -y --no-install-recommends  --allow-unauthenticated  libc6-dev locales libopenblas-base  tzdata \
		libgif-dev autoconf libtool automake build-essential gettext libglib2.0-dev libcairo2-dev libtiff-dev libexif-dev git\
    && locale-gen zh_CN \
    && locale-gen zh_CN.utf8 \
    && dpkg-reconfigure -f noninteractive tzdata
RUN git config --global user.name "Enter" && git config --global user.email "350840291@qq.com"

ENV LANG=zh_CN.UTF-8

RUN git clone https://github.com/mono/libgdiplus && cd libgdiplus && ./autogen.sh  --with-pango && make && make install && cd /usr/lib64/ && ln -s /usr/local/lib/libgdiplus.so libgdiplus.dll