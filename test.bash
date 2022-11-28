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
<<<<<<< HEAD
[ "${out}" =  15.0 Odd number ] || ng "${LINENO}"
=======
[ "${out}" = 15.0 15.0 Odd numberes ] || ng "${LINENO}"
>>>>>>> e021631b3c9830e24e80e0f62c6c5f0f0db6ac23

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

out=$(echo | ./plus)
[ "$?" = 1 ] || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

[ "${res}" = 0 ] && echo OK
exit $res

