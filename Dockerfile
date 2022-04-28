FROM centos:7

COPY texlive.profile /

RUN yum install -y \
        make \
        perl-Digest-MD5 \
        python3-pip \
        unzip \
        wget && \
    yum clean all && \
    mkdir -p /home/tl && \
    cd /home/tl && \
    wget -q --no-check-certificate https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
    tar zxvf install-tl-unx.tar.gz --strip-components=1 && \
    ./install-tl -profile /texlive.profile && \
    tlmgr install \
        amsmath \
        anyfontsize \
        babel-english \
        capt-of \
        cmap \
        commath \
        dvisvgm \
        epstopdf-pkg \
        esint \
        etoolbox \
        fancyhdr \
        fancyvrb \
        float \
        fncychap \
        fontaxes \
        fourier \
        fouriernc \
        framed \
        geometry \
        helvetic \
        hyperref \
        inconsolata \
        infwarerr \
        kvoptions \
        kvsetkeys \
        latex-bin \
        latexmk \
        ltxcmds \
        ncntrsbk \
        needspace \
        newtx \
        noto \
        notomath \
        oberdiek \
        parskip \
        pdftexcmds \
        physics \
        preview \
        psnfss \
        tabulary \
        tex-gyre \
        times \
        titlesec \
        tocbibind \
        tocloft \
        tools \
        upquote \
        varwidth \
        wrapfig \
        xkeyval && \
    tlmgr path add && \
    cd /home && \
    rm -rf /home/tl && \
    rm /texlive.profile && \
    wget -q https://github.com/horvathd/sphinx/archive/refs/heads/fluka.zip && \
    unzip fluka.zip && \
    rm -rf fluka.zip && \
    cd sphinx-fluka && \
    pip3 install --no-cache-dir -e . && \
    pip3 install --no-cache-dir sphinx-rtd-theme==1.0.0
