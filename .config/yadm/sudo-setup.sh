#!/bin/sh

# link sudo to doas
type -P sudo &> /dev/null \
|| ( type -P doas &> /dev/null && doas ln -s `type -P doas` /usr/local/bin/sudo ) \
|| ( ( echo '#!/bin/sh' && echo '("$@")' ) > /usr/local/bin/sudo && chmod +x /usr/local/bin/sudo)