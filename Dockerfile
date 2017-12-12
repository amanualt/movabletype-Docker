From centos:7
MAINTAINER amanu alatibi "amanu.oassis@gmail.com"
RUN yum install httpd httpd-devel -y
RUN yum install -y php perl gcc \
          libxml2-dev \
          libssl-dev \
          libexpat1-dev \
          make \
          zip \
          wget \
          git \
          perl-Net-SSLeay.x86_64 \
          perl-XML-LibXML.x86_64 \
          perl-GD.x86_64 \
          ImageMagick-perl.x86_64 \
          perl-File-Which.noarch \
          perl-DBD-Pg.x86_64 \
          perl-Crypt-SSLeay

ADD httpd.conf /etc/httpd/conf/httpd.conf
RUN mkdir -p /data/MT
RUN yum install cpan make perl-HTML-Parser perl-Digest-MD5 perl-DBD-MySQL -y
RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm CGI Image::Size CGI::Cookie LWP::UserAgent IO::Pty \
          IPC::Run \
          Archive::Zip \
          Authen::SASL \
          CGI::PSGI \
          Cache::Memcached \
          Cache::File \
          Archive::Tar \
          CGI::Parse::PSGI \
          XML::Parser \
          Plack \
          Imager \
          XML::SAX::Expat \
          Crypt::DSA \
          YAML::Syck \
          XMLRPC::Transport::HTTP::Plack \
          XML::SAX::ExpatXS

RUN cpanm DBD::SQLite && cpanm --force DBD::SQLite2
RUN chown -R apache:apache /data/MT/
ENV PERL5LIB /var/www/html/local/lib/perl5

RUN chown -R apache:apache /var/www/html/
RUN chmod -R 755 /var/www/html
EXPOSE 80

CMD ["httpd", "-DFOREGROUND"]
