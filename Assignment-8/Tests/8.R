suppressPackageStartupMessages(suppressWarnings(suppressMessages(source("8.R"))))

print(findSSR("ATACGCGATGC"))
print(findSSR("ATACGATATATCG"))
print(findSSR("ATATCGATATATATATCGC"))
print(findSSR("CGATATCGATATATATGCGATGC"))
print(findSSR("ATATATCGATACTGACCGGATATCATATAT"))
print(findSSR("CAGTGCGCAATATATGCAATA"))
