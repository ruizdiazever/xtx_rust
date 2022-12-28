FROM rust:latest

ARG DEBIAN_FRONTEND=noninteractive

# INSTALL UBUNTU PACKAGES: skip the confirmation by adding the -y flag to the end of an upgrade command
RUN apt update && apt upgrade -y
RUN apt-get install telnet neofetch htop python3-pip -y

# WORKDIR AND PIP PACKAGES
WORKDIR /home/redchiche
COPY . .
RUN cargo build --release

# RUN
CMD cargo run --release
EXPOSE 5001