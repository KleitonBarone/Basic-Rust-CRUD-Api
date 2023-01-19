FROM rust:1.66.1

RUN cargo install diesel_cli --no-default-features --features postgres

RUN cargo install cargo-watch

WORKDIR /usr/src/app

COPY . .

EXPOSE 3001

VOLUME ["/usr/local/cargo"]
