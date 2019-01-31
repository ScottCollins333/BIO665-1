suppressPackageStartupMessages(suppressWarnings(suppressMessages(source("7.R"))))

chromsomalDNA = "ACTTAATTTACCAGGAGCTAGGGACCATTACACGTGGATCGAAAGGCGCATTA"
restrictionSite1 = "AGGGACC"
restrictionSite2 = "GGCGCAT"

print(cutDNA(chromsomalDNA, restrictionSite1, restrictionSite2))

chromsomalDNA = "TATACCTAAAGGCGTACAGGAATTTTTAAAACCCGGAGACTCTGAGATAG"
restrictionSite1 = "AATTTTT"
restrictionSite2 = "GAGATAG"

print(cutDNA(chromsomalDNA, restrictionSite1, restrictionSite2))

chromsomalDNA = "AATTTTTCCAAGCAGCTAGACGACGAGAGATAG"
restrictionSite1 = "AATTTTT"
restrictionSite2 = "GAGATAG"

print(cutDNA(chromsomalDNA, restrictionSite1, restrictionSite2))
