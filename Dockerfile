FROM alpine:3.8

# Required for gsutil installation
RUN set -euo pipefail; \
    apk add --no-cache curl bash python; \
    curl https://sdk.cloud.google.com | bash -s -- --disable-prompts; \
    :

ENV PATH=${PATH}:/root/google-cloud-sdk/bin

# Other utility programs
RUN set -euo pipefail; \
    apk add --no-cache jq; \
    :
