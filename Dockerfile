FROM debian:stable-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
        texlive-binaries texlive-generic-extra texlive-generic-recommended \
        texlive-latex-base texlive-latex-extra texlive-latex-recommended \
        texlive-pictures texlive-pstricks librsvg2-bin xxd \
        python-setuptools python-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip install scour

COPY worker /

USER nobody
ENTRYPOINT ["/worker"]
