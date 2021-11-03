FROM aspnetcore-debug:2.1

LABEL Name=aspnetcore-gdi Version=latest

RUN sed -i "s/deb.debian.org/mirrors.aliyun.com/g" /etc/apt/sources.list \
    && sed -i "s/security.debian.org/mirrors.aliyun.com/g" /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y apt-utils \
    && apt-get install -y libgdiplus \
    && cd /usr/lib \
    && ln -s libgdiplus.so gdiplus.dll
