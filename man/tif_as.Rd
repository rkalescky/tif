% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coercion.R
\name{tif_as}
\alias{tif_as}
\alias{tif_as_corpus_character}
\alias{tif_as_corpus_df}
\alias{tif_as_tokens_df}
\alias{tif_as_tokens_list}
\title{Coerce Between Tif Object Specifications}
\usage{
tif_as_corpus_character(corpus)

tif_as_corpus_df(corpus)

tif_as_tokens_df(tokens)

tif_as_tokens_list(tokens)
}
\arguments{
\item{corpus}{valid tif corpus object to coerce}

\item{tokens}{valid tif tokens object to coerce}
}
\description{
These functions convert between the various valid
formats for corpus and tokens objects. By using these
in other packages, maintainers need to only handle
whichever specific format they would like to work
with, but gain the freedom to output (or convert
into) the one most suited to their package's paradigm.
}
\details{
No explicit checking is done on the input; the output
is guaranteed to be valid only if the input is a valid
format. In fact, we make an effort to not modify an
object that appears to be in the required format already
due to R's copy on modify semantics.
}
\examples{
# coerce corpus object
corpus <- c("Aujourd'hui, maman est morte.",
            "It was a pleasure to burn.",
            "All this happened, more or less.")
names(corpus) <- c("Camus", "Bradbury", "Vonnegut")

new <- tif_as_corpus_df(corpus)
new
tif_as_corpus_character(new)

# coerce tokens object
tokens <- list(doc1 = c("aujourd'hui", "maman", "est", "morte"),
               doc2 = c("it", "was", "a", "pleasure", "to", "burn"),
               doc3 = c("all", "this", "happened", "more", "or", "less"))

new <- tif_as_tokens_df(tokens)
new
tif_as_tokens_list(new)

}
