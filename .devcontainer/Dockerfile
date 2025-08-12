ARG VARIANT=20
FROM node:${VARIANT}

# Install system packages
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        git \
        zsh \
        sudo \
        fzf \
        iptables \
        ipset \
        iproute2 \
        dnsutils \
        jq \
        nano \
        vim \
        less \
        procps \
        unzip \
        gh \
    && apt-get autoremove -y && apt-get clean -y

# Set up user and directories
ARG USERNAME=node
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN mkdir -p /workspace /home/${USERNAME}/.config \
    && chown -R ${USERNAME}:${USERNAME} /workspace /home/${USERNAME}/.config

# Configure sudoers for firewall management
RUN echo "${USERNAME} ALL=(root) NOPASSWD: /usr/sbin/iptables, /usr/sbin/ip6tables, /usr/sbin/ipset" >> /etc/sudoers

# Environment setup
ENV TZ=America/New_York
ENV NPM_CONFIG_PREFIX=/home/${USERNAME}/.npm-global
ENV PATH=$PATH:/home/${USERNAME}/.npm-global/bin
ENV SHELL=/bin/zsh
ENV EDITOR=nano

# Switch to user context
USER ${USERNAME}
WORKDIR /home/${USERNAME}

# Install Oh My Zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install Git Delta
RUN wget -qO- https://github.com/dandavison/delta/releases/download/0.18.2/delta-0.18.2-x86_64-unknown-linux-gnu.tar.gz \
    | tar xz && sudo mv delta-0.18.2-x86_64-unknown-linux-gnu/delta /usr/local/bin/

# Install Claude Code CLI
RUN npm install -g @anthropic-ai/claude-code

# Configure bash history persistence
RUN echo 'export HISTFILE=/home/node/.bash_history' >> ~/.bashrc

# Set working directory
WORKDIR /workspace