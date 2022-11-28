#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Atsuya Sawayma
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
        ews=1
}

res=0

### I/O TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = 15.0 15.0 Odd numberes ] || ng "${LINENO}"

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

out=$(echo | ./plus)
[ "$?" = 1 ] || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

[ "${res}" = 0 ] && echo OK
exit $res

