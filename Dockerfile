FROM rust:1.66.1

RUN cargo install diesel_cli --no-default-features --features postgres

WORKDIR /usr/src/app

COPY . .

RUN cargo build --release

ENTRYPOINT bash -c "diesel setup && cargo run --release"
