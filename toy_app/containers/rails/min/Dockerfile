FROM ubuntu:14.04

RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -nfs /bin/true /sbin/initctl

# RUN echo "deb http://archive.ubuntu.com/ubuntu/ trusty main universe" > /etc/apt/sources.list 

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -yqq inetutils-ping curl


# apt-get install -yqq build-essential libssl-dev libcurl4-openssl-dev libreadline-dev

# Install Ruby 2.1.2
RUN apt-get -yqq install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev
RUN cd /tmp && curl -O http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz && \ 
    tar -xvzf ruby-2.1.2.tar.gz
RUN cd /tmp/ruby-2.1.2 && ./configure --prefix=/usr/local
RUN cd /tmp/ruby-2.1.2 && make && make install
RUN ruby -v

# Install Rails 4.2.0.beta1
#RUN gem install rails -v 4.1.5
RUN gem install rails -v4.2.0.beta1
RUN echo "/usr/bin/gem: --no-ri --no-rdoc" > ~/.gemrc

EXPOSE 3000
