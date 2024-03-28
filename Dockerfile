FROM ubuntu:latest

COPY . /app
WORKDIR /app

# 必要なパッケージをインストール
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    binutils \
    build-essential \
    golang \
    sysstat \
    python3-matplotlib \
    python3-pil \
    fonts-takao \
    fio \
    qemu-kvm \
    virt-manager \
    libvirt-clients \
    virtinst \
    jq \
    docker.io \
    containerd \
    libvirt-daemon-system \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# ユーザーを作成してグループに追加
RUN useradd -m -s /bin/bash -G libvirt,kvm dockeruser && \
    echo "dockeruser:dockeruser" | chpasswd

USER dockeruser

CMD ["/bin/bash"]
