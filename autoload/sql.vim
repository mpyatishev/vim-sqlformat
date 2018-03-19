if exists("sqlparse")
    finish
endif
let sqlparse = 1

if !has('python') and !has('python3')
    echo "Error: Required vim compiled with +python"
    finish
endif

function! sql#FormatSQL()

python3 << EOF

import vim
import sqlparse

start = int(vim.eval('v:lnum')) - 1
end = int(vim.eval('v:count')) + start
buf = vim.current.buffer
NL = '\n'

try:
    sql = NL.join(buf[start:end + 1])
    sql_new = sqlparse.format(sql, reindent=True, keyword_case='upper')

    lines = [line.encode('utf-8') for line in sql_new.split(NL)] + ['']

    buf[:] = buf[:start] + lines + buf[end + 1:]
except Exception as e:
    print(e)
EOF

endfunction
