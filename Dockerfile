ARG BASE_IMAGE

FROM $BASE_IMAGE

COPY image/oem.sh /home/esp

# Add ESP_OPEN_RTOS variable to point to path so that makefiles don't *have* to live in the
# examples directory (will require your makefile to reference $(ESP_OPEN_RTOS)/common.mk
ENV ESP_OPEN_RTOS=/home/esp/esp-open-rtos

ARG RTOS_REPO=https://github.com/malachi-iot/esp-open-rtos.git
ARG RTOS_REPO_BRANCH=lwip2
ARG CACHEBUST=1

# Get the esp-open-rtos SDK
RUN git clone -b $RTOS_REPO_BRANCH --recursive $RTOS_REPO $ESP_OPEN_RTOS

# Create the directory we'll put our work in
RUN mkdir /home/esp/esp-open-rtos/examples/project

# Define working directory. We place the working directory inside the esp-open-rtos/examples directory
# to be compatible with the existing Makefiles
WORKDIR /home/esp/esp-open-rtos/examples/project
