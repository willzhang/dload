FROM alpine
ARG SHELL_NAME
COPY ${SHELLNAME} .
RUN sh ${SHELLNAME}
