FROM ubuntu:16.04

# Install build dependencies (and vim + picocom for editing/debugging)
RUN apt-get -qq update \
    && apt-get install -y make unrar-free autoconf automake libtool libtool-bin \
       gcc g++ gperf flex bison texinfo gawk ncurses-dev libexpat-dev python-dev \
       python python-serial sed git unzip bash help2man wget bzip2 vim picocom \
       nano \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add a user because we can't build the toolchain with root
RUN useradd -d /home/esp -m esp && \
    usermod -a -G dialout,staff esp && \
    mkdir -p /etc/sudoers.d && \
    echo "esp ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/esp && \
    chmod 0440 /etc/sudoers.d/esp

USER esp

# Get the esp-open-sdk
RUN git clone --recursive https://github.com/pfalcon/esp-open-sdk.git /home/esp/esp-open-sdk

# Build the esp-open-sdk
# Clean out large and now unnecessary crosstool-NG build area
RUN cd /home/esp/esp-open-sdk && make toolchain esptool libhal STANDALONE=n && \
 rm -fr /home/esp/esp-open-sdk/crosstool-NG

# Add the esp-open-sdk bin folder to PATH
ENV PATH /home/esp/esp-open-sdk/xtensa-lx106-elf/bin:$PATH
