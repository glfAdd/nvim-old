-- Default mappings (normal mode):
-- d	delete currently selected project
-- r	rename currently selected project
-- c	create a project*
-- s	search inside files within your project
-- b	browse inside files within your project
-- w	change to the selected project's directory without opening it
-- R	find a recently opened file within your project
-- f	find a file within your project (same as <CR>)
--
--
-- Default mappings (insert mode):
-- <c-d>	delete currently selected project
-- <c-v>	rename currently selected project
-- <c-a>	create a project*
-- <c-s>	search inside files within your project
-- <c-b>	browse inside files within your project
-- <c-l>	change to the selected project's directory without opening it
-- <c-r>	find a recently opened file within your project
-- <c-f>	find a file within your project (same as <CR>)
--
--
-- Workspace mappings (insert mode):
-- <c-w>	change workspace

require'telescope'.load_extension('project')



