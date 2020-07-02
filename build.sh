rm -rf /workspace/pynacl
/sbin/apk add --no-cache gcc git libffi-dev make musl-dev
PYNACL_VERSION="$(/usr/bin/awk -F '==' '/pynacl/ { print $2 }' requirements.txt)"
/usr/bin/git config --global advice.detachedHead false
/usr/bin/git clone --branch "${PYNACL_VERSION}" --depth 1 https://github.com/pyca/pynacl.git
cd pynacl || exit
/usr/local/bin/python setup.py bdist_wheel
