FROM rsmmr/clang

# Dependencies
RUN apt clean && apt update
RUN apt install -y git 
RUN apt install -y curl 
RUN apt install -y wget 
RUN apt install -y graphviz 

# Pre-req for mlton
RUN apt install libgmp3-dev -y

# MLTON latest version
RUN mkdir -p /root/Downloads
WORKDIR /root/Downloads
RUN wget https://ayera.dl.sourceforge.net/project/mlton/mlton/20180207/mlton-20180207-1.amd64-linux.tgz
RUN tar -xvf *.tgz
WORKDIR /root/Downloads/mlton-20180207-1.amd64-linux
RUN pwd
RUN make -j4

# Setup some convenient tools
WORKDIR /root
RUN git clone https://github.com/agostini01/dotfiles.git

RUN ln -sf dotfiles/.gitignore_global .gitignore_global
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN ln -sf dotfiles/.vimrc            .vimrc
RUN ln -sf dotfiles/.ctags            .ctags
RUN ln -sf dotfiles/.inputrc          .inputrc

RUN git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm
RUN ln -sf dotfiles/.tmux.conf        .tmux.conf

RUN echo "PS1='\[\033[01;31m\][\[\033[01;30m\]\u@\h\[\033[01;36m\] \W\[\033[01;31m\]]\$\[\033[00m\] '" >> .bashrc

# Copy the working folder to the docker image
RUN mkdir -p /root/Development/sdh-algs
WORKDIR  /root/Development/sdh-algs
COPY . /root/Development/sdh-algs

WORKDIR  /root/Development/sdh-algs

RUN echo "This container will be autodeleted upon exit"
