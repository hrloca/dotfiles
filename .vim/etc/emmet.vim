" emmet

let g:user_emmet_leader_key='<c-y>'
let g:user_emmet_settings = {
      \  'lang' : 'ja',
      \  'html' : {
      \    'filters' : 'html',
      \    'snippets' : {
      \      'jq' : "<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js\"></script>\n<script>\n\\$(function() {\n\t|\n})()\n</script>",
      \      'cd' : "<![CDATA[|]]>",
      \    },
      \  },
      \  'php' : {
      \    'extends' : 'html',
      \    'filters' : 'html,c',
      \  },
      \  'javascript' : {
      \    'snippets' : {
      \      'jq' : "\\$(function() {\n\t\\${cursor}\\${child}\n});",
      \      'jq:json' : "\\$.getJSON(\"${cursor}\", function(data) {\n\t\\${child}\n});",
      \      'jq:each' : "\\$.each(data, function(index, item) {\n\t\\${child}\n});",
      \      'fn' : "(function() {\n\t\\${cursor}\n})();",
      \      'tm' : "setTimeout(function() {\n\t\\${cursor}\n}, 100);",
      \    },
      \    'use_pipe_for_cursor' : 0,
      \    'extends' : 'jsx',
      \  },
      \  'css' : {
      \    'filters' : 'fc',
      \    'snippets' : {
      \      'box-shadow' : "-webkit-box-shadow: 0 0 0 # 000;\n-moz-box-shadow: 0 0 0 0 # 000;\nbox-shadow: 0 0 0 # 000;",
      \    },
      \  },
      \  'less' : {
      \    'filters' : 'fc',
      \    'extends' : 'css',
      \  },
      \}
