out_file = "3.tsv"

if (file.exists(out_file))
  invisible(file.remove(out_file))

suppressPackageStartupMessages(suppressWarnings(suppressMessages(source("3.R"))))

if (!file.exists(out_file))
  print(paste0("No file exists at ", out_file, "."))

test_data = suppressWarnings(suppressMessages(read_tsv("3.tsv")))
print(test_data)