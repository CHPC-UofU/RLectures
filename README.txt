SUpport R & Jupyter

RHEL6:
-----
/uufs/chpc.utah.edu/common/home/u0253283/software/pkg/RLibs/3.2.3i/ & Python 2.7.3

CENTOS7:
-------
ml purge
ml load R/3.2.3.rh7.Wim
ml load anaconda3/4.1.1

Installing the IRKernel
See e.g.:
http://blog.revolutionanalytics.com/2015/09/using-r-with-jupyter-notebooks.html

# Steps taken ::
# -----------
R
R> install.packages(c('repr', 'IRdisplay', 'crayon', 'pbdZMQ', 'devtools'))
R> devtools::install_github('IRkernel/IRkernel')
R>  IRkernel::installspec(name='ir32',displayname='R 3.2.3-c7')
quit()

upquote.sty was missing (Latex)

su -
wget http://ctan.mackichan.com/macros/latex/contrib/upquote.zip
unzip upquote.zip
cd upquote
latex upquote.ins
mkdir -p /usr/share/texlive/texmf-dist/tex/latex/upquote
cp upquote.sty /usr/share/texlive/texmf-dist/tex/latex/upquote
texhash


.libPaths() # get library location 
library()   # see all packages installed 
search()    # see packages currently loaded

http://www.statmethods.net/interface/packages.html


library(bezier)
library(hermite)
search()
 [1] ".GlobalEnv"        "package:hermite"   "package:maxLik"    "package:miscTools" "package:bezier"   
 [6] "tools:rstudio"     "package:stats"     "package:graphics"  "package:grDevices" "package:utils"    
[11] "package:datasets"  "package:methods"   "Autoloads"         "package:base"
detach("package:hermite")  # Unload package

