\name{rhive-apply}
\alias{rhive.napply}
\alias{rhive.sapply}
\title{R Distributed aggregate function using HQL}
\usage{
rhive.aggregate(tablename, hiveFUN, ..., groups = NULL , hiveclient =rhive.defaults('hiveclient'))
}
\description{
R Distributed aggregate function using HQL
}
\arguments{
\item{hiveclient}{a client for hive.}
\item{tablename}{hive table name.}
\item{hiveFUN}{the hive buit-in function name to be applied.}
\item{...}{optional arguments to 'hiveFUN'.}
\item{groups}{aggregated key list. it is vector type}
} 
\author{
\email{rhive@nexr.com}
}
\examples{
## try to connect hive server
\dontrun{rhive.connect("127.0.0.1")}

## invoke napply for numeric return type
\dontrun{rhive.aggregate('emp','sum','sal',c('ename'))}

## close connection
\dontrun{rhive.close()}
}
\keyword{programming}