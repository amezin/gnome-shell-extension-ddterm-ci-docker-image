FROM registry.fedoraproject.org/fedora:latest@sha256:90afa0d40e87d356ed1c715195fdbbf5bb096339d5800f02b2abbfb462e18c88

RUN dnf update -y && \
    dnf install -y \
        /usr/bin/git \
        /usr/bin/make \
        /usr/bin/gjs \
        /usr/bin/gtk-builder-tool \
        /usr/bin/gtk4-builder-tool \
        /usr/bin/xsltproc \
        /usr/bin/npm \
        /usr/bin/msgfmt \
        /usr/bin/xgettext \
        /usr/bin/msgmerge \
        /usr/bin/msgcmp \
        /usr/bin/patch \
        /usr/bin/diff \
        /usr/bin/jq \
        /usr/bin/zip \
        /usr/bin/unzip \
        /usr/bin/xvfb-run \
        /usr/bin/tox \
        /usr/bin/podman \
        mesa-dri-drivers \
        python3-gobject \
        ImageMagick-libs \
        --nodocs \
        --setopt install_weak_deps=False \
    && dnf clean all -y

VOLUME /var/lib/containers

# Avoid D-Bus access
ENV GTK_A11Y=none
