# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function() {
    dat <- data.frame(x = rnorm(100), y = rnorm(100), z = rnorm(100))
    model <- c("x ~ y")

    ## check whether the optional package is installed
    requireNamespace("semTools") # returns informative error when not installed
    ## attach the optional package (also attaches dependencies: lavaan)
    if (!"package:semTools" %in% search()) attachNamespace("semTools")

    ## Now this should work fine.  Use the :: operator so you
    ## don't have to place sem.auxiliary() in the NAMESPACE file.
    semTools::sem.auxiliary(model, dat, aux = c('z'))
}
