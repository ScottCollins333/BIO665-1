suppressPackageStartupMessages(suppressWarnings(suppressMessages(source("3.R"))))

test_data = suppressWarnings(suppressMessages(read_tsv("3.tsv")))
print(test_data)