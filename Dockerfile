FROM ruby:2.7.6-slim
RUN apt-get update && apt-get -y install wget gnupg
RUN apt-get update && \
    apt-get -y install build-essential \
        gnupg \
        libvips \
        file \
        libxml2 \
        libxml2-dev \
        libcurl4-openssl-dev \
        default-libmysqlclient-dev \
        curl \
        git \
        wkhtmltopdf \
        python \
        vim

RUN mkdir /webapp
WORKDIR /webapp

COPY Gemfile Gemfile.lock ./
CMD ["rails", "server", "-b", "0.0.0.0"]
