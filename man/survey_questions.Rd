% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/survey_questions.R
\name{survey_questions}
\alias{survey_questions}
\title{Retrieve a data frame containing question IDs and labels}
\usage{
survey_questions(surveyID)
}
\arguments{
\item{surveyID}{A string. Unique ID for the survey you want to download.
Returned as `id` by the \link[qualtRics]{getSurveys} function.}
}
\description{
Retrieve a data frame containing question IDs and labels
}
\examples{
\dontrun{
# Register your Qualtrics credentials if you haven't already
qualtrics_api_credentials(api_key = "<YOUR-API-KEY>",
                          base_url = "<YOUR-BASE-URL>")

# Retrieve a list of surveys
surveys <- all_surveys()

# Retrieve questions for a survey
questions <- survey_questions(surveyID = surveys$id[6])

# Retrieve a single survey, filtering for specific questions
mysurvey <- getSurvey(surveyID = surveys$id[6],
                      saveDir = tempdir(),
                      includedQuestionIds = c("QID1", "QID2", "QID3"),
                      verbose = TRUE)
}
}
\seealso{
See \url{https://api.qualtrics.com/docs} for documentation on the
Qualtrics API.
}
