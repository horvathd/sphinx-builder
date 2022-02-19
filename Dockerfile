FROM fedora:35

RUN dnf update -y && \
    dnf install -y make \
                   pip \
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
    pip install --no-cache-dir sphinx==4.4.0 \
                               sphinx-rtd-theme==1.0.0
