FROM debian:stable-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
        texlive-binaries texlive-generic-extra texlive-generic-recommended \
        texlive-latex-base texlive-latex-extra texlive-latex-recommended \
        texlive-pictures texlive-pstricks librsvg2-bin xxd \
    && rm -rf /var/lib/apt/lists/*

COPY worker /

USER nobody
ENTRYPOINT ["/worker"]
