# linux-in-practice-2nd

「Linux のしくみ 増補改訂版」の実験コードです

# koki-ki による加筆

Mac を使用していたので Docker 上で Ubuntu:20.04 を使えるようにしました。
docker build -t ubuntu .
docker run -v $PWD:/app -it --rm ubuntu
で使えると思います。

# 実験プログラム実行環境の作成

お手元の Ubuntu 20.04 環境で本書の実験プログラムを実行する際は、以下のコマンドを実行して必要パッケージのインストールおよびユーザ設定をしてください。

```console
$ sudo apt update && sudo apt install binutils build-essential golang sysstat python3-matplotlib python3-pil fonts-takao fio qemu-kvm virt-manager libvirt-clients virtinst jq docker.io containerd libvirt-daemon-system
$ sudo adduser `id -un` libvirt
$ sudo adduser `id -un` libvirt-qemu
$ sudo adduser `id -un` kvm
```
