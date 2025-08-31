# LaTeXmk configuration file for AI Agentic LaTeX Development
# This file configures latexmk for optimal compilation

# Set the default PDF generation method
$pdf_mode = 1;

# Enable synctex for PDF viewer synchronization
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# Configure bibliography processing
$bibtex_use = 2;

# Set output directory to build folder
$out_dir = 'build';

# Clean up auxiliary files after successful compilation
$clean_ext = 'aux bbl blg fdb_latexmk fls log out synctex.gz toc lof lot idx ind glo gls glg acn acr alg ist loa nav snm vrb';

# Enable automatic cleaning
$cleanup_includes_cusdep_generated = 1;

# Set maximum number of runs
$max_repeat = 5;

# Configure for different document classes
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape %O %S';

# Enable shell escape for advanced packages
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape %O %S';

# Configure for beamer presentations
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape %O %S';

# Set up for XeLaTeX if needed
# $pdf_mode = 5;
# $xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# Set up for LuaLaTeX if needed
# $pdf_mode = 4;
# $lualatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# Configure for different output formats
$postscript_mode = $dvi_mode = $pdf_mode = 0;
$pdf_mode = 1;  # PDF mode

# Enable automatic preview
$preview_continuous_mode = 1;

# Set up for different operating systems
if ($^O eq 'MSWin32') {
    # Windows-specific settings
    $pdf_previewer = 'start acrobat';
    $ps_previewer = 'start gsview32';
} elsif ($^O eq 'darwin') {
    # macOS-specific settings
    $pdf_previewer = 'open';
    $ps_previewer = 'open';
} else {
    # Linux-specific settings
    $pdf_previewer = 'evince';
    $ps_previewer = 'gv';
}

# Configure for different LaTeX distributions
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape %O %S';

# Enable debugging information
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape -recorder %O %S';
