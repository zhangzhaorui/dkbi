library(devtools)
library(usethis)
library(desc)

# Remove default DESC
unlink("DESCRIPTION")

# Create and clean desc
my_desc <- description$new("!new")

# Set your package name
my_desc$set("Package", "dkbi")

#Set your name
my_desc$set("Authors@R", "person('Thomas', 'Jc', email = 'thomas.jcng@gmail.com', role = c('cre', 'aut'))")

# Remove some author fields
my_desc$del("Maintainer")

# Set the version
my_desc$set_version("0.0.0.9000")

# The title of your package
my_desc$set(Title = "dkbi")
# The description of your package
my_desc$set(Description = "A general purpose package for Dankegongyu BI unit.")
# The urls
my_desc$set("URL", "http://https://github.com/tmasjc/dkbi.git")
my_desc$set("BugReports", "https://github.com/tmasjc/dkbi/issues")
# Save everyting
my_desc$write(file = "DESCRIPTION")

# If you want to use the MIT licence, code of conduct, and lifecycle badge
use_mit_license(name = "Thomas Jc")
use_code_of_conduct()
use_lifecycle_badge("Experimental")
use_news_md()

# Get the dependencies
use_package("httr")
use_package("jsonlite")
use_package("attempt")
use_package("magrittr")
use_package("base64enc")
use_package("RMySQL")
use_package("mongolite")
use_package("DBI")

# Clean your description
use_tidy_description()
