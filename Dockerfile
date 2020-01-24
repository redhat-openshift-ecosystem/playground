FROM registry.svc.ci.openshift.org/openshift/release:golang-1.13 AS builder
WORKDIR /
COPY Makefile Makefile
COPY go.sh go.sh
RUN make build

FROM registry.access.redhat.com/ubi7 
WORKDIR /
COPY --from=builder Makefile Makefile
COPY --from=builder go.sh go.sh
ENTRYPOINT ["/bin/sh", "go.sh"]
