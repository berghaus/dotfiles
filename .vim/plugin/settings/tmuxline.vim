let g:tmuxline_theme = {
    \ 'a'            : [ '59', '74' ],
    \ 'b'            : [ '153', '59' ],
    \ 'c'            : [ '74', '236' ],
    \ 'x'            : [ '74', '236' ],
    \ 'y'            : [ '153', '59' ],
    \ 'z'            : [ '59', '74' ],
    \ 'bg'           : [ '74', '236' ],
    \ 'win'          : [ '74', '236' ],
    \ 'win.activity' : [ '255', '236' ],
    \ 'cwin'         : [ '255', '74', 'bold' ]
    \ }

let g:tmuxline_preset = {
    \'a'    : '#S',
    \'c'    : '#(whoami)',
    \'win'  : '#I #W',
    \'cwin' : '#I #W',
    \'x'    : '#(date)',
    \'z'    : '#H'
    \ }