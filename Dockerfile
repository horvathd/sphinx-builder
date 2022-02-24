FROM fedora:35

RUN dnf update -y && \
    dnf install -y make \
                   pip \
                   wget \
                   unzip \
                   latexmk \
                   texlive-anyfontsize \
                   texlive-capt-of \
                   texlive-commath \
                   texlive-dvisvgm \
                   texlive-fncychap \
                   texlive-fontaxes \
                   texlive-fouriernc \
                   texlive-framed \
                   texlive-inconsolata \
                   texlive-needspace \
                   texlive-noto \
                   texlive-physics \
                   texlive-preview \
                   texlive-tabulary \
                   texlive-tocbibind \
                   texlive-tocloft \
                   texlive-upquote \
                   texlive-wrapfig && \
    dnf clean all && \
    cd /home && \
    wget -q https://github.com/horvathd/sphinx/archive/refs/heads/fluka.zip && \
    unzip fluka.zip && \
    rm -rf fluka.zip && \
    cd sphinx-fluka && \
    pip install --no-cache-dir -e . && \
    pip install --no-cache-dir sphinx-rtd-theme==1.0.0
