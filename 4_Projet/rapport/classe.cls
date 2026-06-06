\LoadClass[a4paper,12pt]{article} % Classe du document

%--------------------- Packages ------------------------

\RequirePackage[french]{babel} %Langue du document
\RequirePackage[utf8]{inputenc} %Caractères spéciaux
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
\makenomenclature
\RequirePackage{fancyhdr}
% \RequirePackage{biblatex}
%\pagestyle{fancy}
%\fancyheadoffset{1cm}
%\setlength{\headheight}{2cm}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}%Paquet pour insérer légendes dans des sous-figures comme Figure 1a, 1b
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} %Configuration de la page
\usepackage{multirow}
\usepackage{amssymb}
\usepackage{comment}
\usepackage{amsmath}
\usepackage{pdfpages}
\usepackage{array}
\usepackage{libertine}
% \usepackage{biblatex}
\usepackage{siunitx}
\usepackage{setspace}
\usepackage{subcaption}
\usepackage{booktabs}
% \usepackage{natbib}


%-------------------- Informations sur le rapport ----------------------

\newcommand{\UE}[1]{\renewcommand{\UE}{#1}}
\newcommand{\sujet}[1]{\renewcommand{\sujet}{#1}}
\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\tuteur}[1]{\renewcommand{\tuteur}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\eleves}{#1}}
\newcommand{\entreprise}[1]{\renewcommand{\entreprise}{#1}}
\newcommand{\correspondant}[1]{\renewcommand{\correspondant}{#1}}
\newcommand{\daterv}[1]{\renewcommand{\daterv}{#1}}
\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\newcommand{\fairemarges}{
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{1cm}
\setlength{\headheight}{2cm}
\lhead{\includegraphics[scale=0.1]{Logos/Logo-Cnam.jpg}} %Affichage de l'image au top de la page
\rhead{  \begin{minipage}{.8\linewidth}
    \begin{flushright}
    \nouppercase{\leftmark}
    \end{flushright}
  \end{minipage}
}
%\rfoot{\thepage}
%\cfoot{\textbf{\titre}}
\lfoot{\UE}
}

\newcommand{\fairepagedegarde}{
\begin{titlepage}

% \ThisLRCornerWallPaper{0.15}{Logo-Cnam.jpg}
	\centering %Centraliser le contenu
	\includegraphics[width=0.8\textwidth]{Logos/Logo-Cnam.jpg}%\par\vspace{1cm} 
	\vspace{1cm}
	{\scshape\Large \UE \\ \par \sujet \\ Rapport de projet\\ Intelligence artificielle avancée\par} %sous-titre
	\vspace{1cm}%Espace de 1cm
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
	{\huge\bfseries \titre \par} \
    \rule{\linewidth}{0.2 mm} \\[1.5 cm]
	\vspace{1cm}%Espace de 3cm
    
	\begin{minipage}{0.5\textwidth} %Minipage pour faire deux colonnes
		\begin{flushleft} \large %Envoyer à gauche
		\textbf{\Large Étudiant :}\\ %Pour le titre au dessus des noms à gauche
        \Large \eleves\\ %Remplacer pour chacun
		\end{flushleft}
	\end{minipage}
	~
	\begin{minipage}{0.4\textwidth}
		\begin{flushright} \large
		%\textbf{Tuteur :} \\
		% \tuteur \\
		\end{flushright}
	\end{minipage}\\[1cm]
    
	\vfill
	{\large \today\par} %Affichage de la date

\end{titlepage}
}

\newcommand{\tabledematieres}{
\tableofcontents

\newpage
}
% \addbibresource{biblio}
\usepackage[backend=biber,style=alphabetic]{biblatex}
\bibliography{references.bib}

\newcommand{\insererfigure}[4]{
\begin{figure}[ht]
\centering
\includegraphics[height=#2]{#1}
\caption{#3}
\label{fig: #4}
\end{figure}
}
% \printbibliography