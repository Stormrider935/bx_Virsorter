FROM continuumio/miniconda3

RUN apt update && apt install -y procps make gcc && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN conda config --add channels conda-forge && \
    conda config --add channels bioconda && \
    conda config --add channels default

RUN conda install -c bioconda perl-bioperl-core=1.007002 virsorter=1.0.6

# RUN git clone https://github.com/simroux/VirSorter.git
# RUN cd VirSorter/Scripts && make

# RUN cd /bin && wget http://metagene.nig.ac.jp/metagene/mga_x86_64.tar.gz && tar -xvzf mga_x86_64.tar.gz && rm mga_x86_64.tar.gz

# ENV PATH /VirSorter:$PATH
