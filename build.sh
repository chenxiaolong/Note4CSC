#!/bin/bash

release=1

curdir="$(pwd)"
filesdir="$(cd "$(dirname "${0}")" && pwd)"

pushd "${filesdir}"

version="$(cat system/CSCVersion.txt)"
sales_code="$(cat system/csc/sales_code.dat)"

zip -r "${curdir}/CSC_${sales_code}_${version}_r${release}.zip" \
    META-INF system

popd
