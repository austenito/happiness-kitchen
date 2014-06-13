FROM ubuntu:14.04

# Add the PostgreSQL PGP key to verify their Debian packages.
# It should be the same key as https://www.postgresql.org/media/keys/ACCC4CF8.asc
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8

# Add PostgreSQL's repository. It contains the most recent stable release
#     of PostgreSQL, ``9.3``.
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list

# Update the Ubuntu and PostgreSQL repository indexes
RUN apt-get update

# Install ``python-software-properties``, ``software-properties-common`` and PostgreSQL 9.3
#  There are some warnings (in red) that show up during the build. You can hide
#  them by prefixing each apt-get statement with DEBIAN_FRONTEND=noninteractive
RUN apt-get -y -q install python-software-properties software-properties-common
RUN apt-get -y -q install postgresql-9.3 postgresql-client-9.3 postgresql-contrib-9.3


ADD https://raw.githubusercontent.com/austenito/happiness-kitchen/master/docker-files/postgres/postgresql.conf /etc/postgresql/9.3/main/postgresql.conf
RUN chown postgres /etc/postgresql/9.3/main/postgresql.conf

ADD https://raw.githubusercontent.com/austenito/happiness-kitchen/master/docker-files/postgres/pg_hba.conf /etc/postgresql/9.3/main/pg_hba.conf
RUN chown postgres /etc/postgresql/9.3/main/pg_hba.conf

ADD https://raw.githubusercontent.com/austenito/happiness-kitchen/master/docker-files/postgres/run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

VOLUME ["/pgdata"]
EXPOSE 5432
CMD ["/usr/local/bin/run"]
