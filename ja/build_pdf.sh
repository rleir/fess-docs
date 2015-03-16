#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

LANG="ja"
AUTHOR="CodeLibs"
RELEASE="9.3"

CONFDIR="${SCRIPT_DIR}/../conf"
BUILDDIR="${SCRIPT_DIR}/_build/pdf/${RELEASE}"

PROJECT="FessInstall"
TITLE="Fess インストールガイド"
TYPE="install"
echo "Processing ${SCRIPT_DIR}/${RELEASE}/${TYPE}"
cd ${SCRIPT_DIR}/${RELEASE}/${TYPE}
make SPHINXOPTS="-c ${CONFDIR}" BUILDDIR="${BUILDDIR}/${TYPE}" SPHINX_LANG="${LANG}" SPHINX_PROJECT="${PROJECT}" SPHINX_TITLE="${TITLE}" SPHINX_AUTHOR="${AUTHOR}" SPHINX_RELEASE="${RELEASE}" -f ${CONFDIR}/Makefile latexpdfja

PROJECT="FessUser"
TITLE="Fess ユーザーガイド"
TYPE="user"
echo "Processing ${SCRIPT_DIR}/${RELEASE}/${TYPE}"
cd ${SCRIPT_DIR}/${RELEASE}/${TYPE}
make SPHINXOPTS="-c ${CONFDIR}" BUILDDIR="${BUILDDIR}/${TYPE}" SPHINX_LANG="${LANG}" SPHINX_PROJECT="${PROJECT}" SPHINX_TITLE="${TITLE}" SPHINX_AUTHOR="${AUTHOR}" SPHINX_RELEASE="${RELEASE}" -f ${CONFDIR}/Makefile latexpdfja

PROJECT="FessAdmin"
TITLE="Fess 管理者ガイド"
TYPE="admin"
echo "Processing ${SCRIPT_DIR}/${RELEASE}/${TYPE}"
cd ${SCRIPT_DIR}/${RELEASE}/${TYPE}
make SPHINXOPTS="-c ${CONFDIR}" BUILDDIR="${BUILDDIR}/${TYPE}" SPHINX_LANG="${LANG}" SPHINX_PROJECT="${PROJECT}" SPHINX_TITLE="${TITLE}" SPHINX_AUTHOR="${AUTHOR}" SPHINX_RELEASE="${RELEASE}" -f ${CONFDIR}/Makefile latexpdfja

PROJECT="FessConfig"
TITLE="Fess 設定ガイド"
TYPE="config"
echo "Processing ${SCRIPT_DIR}/${RELEASE}/${TYPE}"
cd ${SCRIPT_DIR}/${RELEASE}/${TYPE}
make SPHINXOPTS="-c ${CONFDIR}" BUILDDIR="${BUILDDIR}/${TYPE}" SPHINX_LANG="${LANG}" SPHINX_PROJECT="${PROJECT}" SPHINX_TITLE="${TITLE}" SPHINX_AUTHOR="${AUTHOR}" SPHINX_RELEASE="${RELEASE}" -f ${CONFDIR}/Makefile latexpdfja

