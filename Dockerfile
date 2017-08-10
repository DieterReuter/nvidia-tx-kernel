FROM debian:jessie

WORKDIR /workdir

# Install build dependencies
RUN apt-get update && \
  apt-get install -y bc build-essential curl git-core libncurses5-dev module-init-tools

# Install crosscompile toolchain for ARM64/aarch64
RUN mkdir -p /opt/linaro && \
  curl -sSL http://releases.linaro.org/components/toolchain/binaries/7.1-2017.05/aarch64-linux-gnu/gcc-linaro-7.1.1-2017.05-x86_64_aarch64-linux-gnu.tar.xz | tar xfJ - -C /opt/linaro
ENV CROSS_COMPILE=/opt/linaro/gcc-linaro-7.1.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-

# Get the Linux kernel 4.12.5 source
ENV LINUX=/workdir/linux-4.12.5
RUN curl -sSL https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.12.5.tar.xz | tar xfJ -

COPY defconfigs/ /defconfigs/
CMD ["/build-kernel.sh"]
ADD build-kernel.sh /
