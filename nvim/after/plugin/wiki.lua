vim.g.wiki_root = '~/wiki'

vim.cmd([[
  let s:tag_parser = deepcopy(g:wiki#tags#default_parser)
  let s:tag_parser.re_match = '\v%(^|\s)#\zs[^# ]+'
  let s:tag_parser.re_findstart = '\v%(^|\s)#\zs[^# ]+'
  let s:tag_parser.make = {t, l -> empty(t) ? '' : join(map(t, '"#" . v:val'))}

  let g:wiki_tag_parsers = [s:tag_parser]
]])
-- TODO: add tag parsing for hashed tags instead of the default colon ones
