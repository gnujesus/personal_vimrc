-- Place this in ${HOME}/.config/nvim/LuaSnip/all.lua


-- Greek Letters
return {

-- ************** TEMPLATES ******************


s({trig=";usetemplate"},
  fmta(
    [[
      \documentclass{article}
      \usepackage[english]{babel}
      \usepackage[utf8]{inputenc}
      \usepackage{amsmath, amssymb, amsthm}
      \usepackage{graphicx}
      \usepackage[colorlinks=true, allcolors=blue]{hyperref}

      \title{<>}
      \author{<>}
      \date{<>}

      \begin{document}

      \maketitle

      \section{Introduction}

      \end{document}
    ]],
    {
      i(1),
      i(2),
      i(3),
--      i(4),
--      rep(1),  -- this node repeats insert node i(1)
    }
  )
),







-- Examples of Greek letter snippets, autotriggered for efficiency
s({trig=";a", snippetType="autosnippet"},
  {
    t("\\alpha"),
  }
),
s({trig=";b", snippetType="autosnippet"},
  {
    t("\\beta"),
  }
),
s({trig=";g", snippetType="autosnippet"},
  {
    t("\\gamma"),
  }
),


-- Begin and End Statement

s({trig=";env", snippetType="autosnippet"},
  fmta(
    [[
      \begin{<>}
          <>
      \end{<>}
    ]],
    {
      i(1),
      i(2),
      rep(1),  -- this node repeats insert node i(1)
    }
  )
),


-- Equation starts and ends

s({trig="eq", dscr=""},
  fmta(
    [[
      % 
      \begin{equation}
          <>
      \end{equation}
      %
    ]],
    { i(0) }
  )
),

s({trig="seq", dscr=""},
  fmta(
    [[
      %
      \begin{equation}
      \begin{split}
          <>
      \end{split}
      \end{equation}
      %
    ]],
    { i(0) }
  )
),


-- Insert a href

s({trig="hr", dscr="The hyperref package's href{}{} command (for url links)"},
  fmta(
    [[\href{<>}{<>}]],
    {
      i(1, "url"),
      i(2, "display name"),
    }
  )
),


-- Fraction
s({trig="ff", snippetType="autosnippet"},
  fmta(
  [[\frac{<>}{<>}]], 
  {
    i(1),
    i(2),
  }
  )
),



-- Subsection
s({trig="subsec"},
  fmta(
    [[
      \subsection{<>}
    ]],
    {
      i(1),
    }
  )
),

-- Examples
s({trig=";eg", snippetType="autosnippet"},
  fmta(
  [[\textit{e.g <>}]],
    {
      i(1),
    }
  )
),


-- Big skip
s({trig="bs"},
  t("\\bigskip")
),


-- Insert Derivate
s({trig=";de", snippetType="autosnippet"},
  t("\\frac{dx}{dy} = ")
),

-- Insert Limit
s({trig=";lm", snippetType="autosnippet"},
  t("\\lim_{h \\rightarrow 0} ")
),

-- Rightarrow
s({trig=";ra", snippetType="autosnippet"},
  t("\\rightarrow ")
),

-- Square Root
s({trig=";sq", snippetType="autosnippet"},
  fmta(
  [[\sqrt{<>}]],
  {
    i(1),
  }
  )
),

-- Square Root
s({trig=";fn", snippetType="autosnippet"},
  fmta(
  [[f(<>)]],
  {
    i(1),
  }
  )
),

s({trig=";tb", snippetType="autosnippet"},
  fmta(
  [[\textbf{<>}]],
  {
    i(1),
  }
  )
),

}

