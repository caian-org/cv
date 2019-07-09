%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Developer CV
% LaTeX Class
% Version 1.1 (8/7/19)
%
% This class originates from:
% http://www.LaTeXTemplates.com
%
% Authors:
% Jan Vorisek (jan@vorisek.me)
% Based on a template by Jan Küster (info@jankuester.com)
% Modified for LaTeX Templates by Vel (vel@LaTeXTemplates.com)
% Modified for personal usage by Caian (hi@caian.org)
%
% License:
% The MIT License (see included LICENSE file)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%----------------------------------------------------------------------------------------
%   CLASS CONFIGURATION
%----------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{developercv}[2019/01/28 Developer CV class v1.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}} % Pass through any options to the base class
\ProcessOptions\relax % Process given options

\LoadClass{extarticle} % Load the base class


%----------------------------------------------------------------------------------------
%   PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------

\setlength{\parindent}{0mm} % Suppress paragraph indentation

\usepackage[hidelinks]{hyperref} % Required for links but hide the default boxes around links

\usepackage{moresize} % Provides more font size commands (\HUGE and \ssmall)
\usepackage{setspace} % Required by setstretch
\usepackage{enumitem} % Required to customize itemize
\usepackage{xcolor}   % Required by definecolor

\pagestyle{empty} % No headers or footers


%----------------------------------------------------------------------------------------
%   PAGE LAYOUT
%----------------------------------------------------------------------------------------

\usepackage{geometry} % Required for adjusting page dimensions and margins

\geometry{
    paper=a4paper,     % Paper size, change to letterpaper for US letter size
    top=1.75cm,        % Top margin
    bottom=1.75cm,     % Bottom margin
    left=2cm,          % Left margin
    right=2cm,         % Right margin
    headheight=0.75cm, % Header height
    footskip=1cm,      % Space from the bottom margin to the baseline of the footer
    headsep=0.5cm,     % Space from the top margin to the baseline of the header
    %showframe, % Uncomment to show how the type block is set on the page
}


%----------------------------------------------------------------------------------------
%   FONTS
%----------------------------------------------------------------------------------------

\usepackage[utf8]{inputenc} % Required for inputting international characters
\usepackage[T1]{fontenc} % Output font encoding for international characters

\usepackage[default]{raleway}

% define the sans serif font
\setsansfont{Source Sans Pro}

\renewcommand*\familydefault{\sfdefault} % Force the sans-serif version of any font used

%------------------------------------------------

\usepackage{fontawesome} % Required for FontAwesome icons

% Command to output an icon in a black square box with text to the right
% The first parameter is the FontAwesome icon name, the second is the box size and the third is the text
\newcommand{\icon}[3]{
    \vcenteredhbox{\colorbox{black}{\makebox(#2, #2){\textcolor{white}{\large\csname fa#1\endcsname}}}}% Icon and box
    \hspace{0.2cm}% Whitespace
    \vcenteredhbox{\textcolor{black}{\small{#3}}}% Text
}


%----------------------------------------------------------------------------------------
%   GRAPHICS DEFINITIONS
%----------------------------------------------------------------------------------------

\usepackage{tikz} % Required for creating the plots
\usetikzlibrary{shapes, backgrounds}
\tikzset{x=1cm, y=1cm} % Default tikz units

% Command to vertically centre adjacent content
\newcommand{\vcenteredhbox}[1]{% The only parameter is for the content to centre
    \begingroup%
        \setbox0=\hbox{#1}\parbox{\wd0}{\box0}%
    \endgroup%
}

\definecolor{LightGrey}{HTML}{BBBBBB}


%----------------------------------------------------------------------------------------
%   CUSTOM SECTIONS
%----------------------------------------------------------------------------------------

% Command to output section title headings
\newcommand{\cvsect}[1]{% The only parameter is the section text
    \vspace{\baselineskip} % Whitespace before the section title
    \colorbox{black}{\textcolor{white}{\MakeUppercase{\textbf{\strut#1\strut}}}}\\% Section title
    \vspace{0.2cm}
}


%----------------------------------------------------------------------------------------
%   ENTRY LIST
%----------------------------------------------------------------------------------------

\usepackage{longtable} % Required for tables that span multiple pages
\setlength{\LTpre}{0pt} % Remove default whitespace before longtable
\setlength{\LTpost}{0pt} % Remove default whitespace after longtable

\setlength{\tabcolsep}{0pt} % No spacing between table columns

% Environment to hold a new list of entries
\newenvironment{entrylist}{
    \begin{longtable}[H]{l l}
}{
    \end{longtable}
}

% First argument for the leftmost date(s) text, second is for the bold entry
% heading, third is for the bold right-aligned entry qualifier and the fourth
% is for the entry description
\newcommand{\entry}[4]{
    \parbox[t]{0.175\textwidth}{ % 17.5% of the text width of the page
        #1 % Leftmost entry date(s) text
    }%
    &\parbox[t]{0.825\textwidth}{ % 82.5% of the text width of the page
        {\large{\textbf{#2}}} % Entry heading text
        \hfill % Horizontal whitespace
        {\textbf{\textcolor{black}{#3}\vspace{0.2cm}}}\\ % Right-aligned entry qualifier text
        {\setstretch{1.0}\small{#4}} % Entry description text
    }\\\\}


%----------------------------------------------------------------------------------------
%   SKILL LIST
%----------------------------------------------------------------------------------------

% Environment to hold a new list of entries
\newenvironment{skillset}{
    \begingroup
    \renewcommand\arraystretch{0.3}
    \begin{longtable}[H]{l l}
}{
    \end{longtable}
    \endgroup
}

\newcommand{\skill}[2]{
    \parbox[t]{0.25\textwidth}{
        \raggedleft\colorbox{black}{{\textcolor{white}{\strut#1\strut}}} % First name
    }
    &\parbox[t]{0.70\textwidth}{
        \hspace{0.2cm}% Whitespace
        \strut\small#2\strut
    }\\\\}


%----------------------------------------------------------------------------------------
%   PROJECTS
%----------------------------------------------------------------------------------------

\newcommand{\project}[3]{
    \parbox[t]{0.175\textwidth}{
        \textbf{\large{#1}}
    }
    &\parbox[t]{0.825\textwidth}{
        \hfill
        {\texttt{#2}}\\\
        #3
    }\\\\}


%----------------------------------------------------------------------------------------
%   FORMATTED LIST
%----------------------------------------------------------------------------------------

\newenvironment{listf}{
    \begin{itemize}[leftmargin=0.5cm, topsep=0cm]
}{
    \end{itemize}
}

\newcommand{\itemf}[3]{
    \item \href{https://#2/#1}{\textcolor{LightGrey}{#2/}\textbf{#1}}\newline
        {\setstretch{1.0}\small{#3}}
}
