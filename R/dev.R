generate_report <- function() {

	library(rmarkdown)
	library(knitr)

	# render("/Users/Tonton/work/projects/ebola/reports/sierra_leone_sitrep/sierra_leone_sitrep.Rmd",output_format=beamer_presentation(toc=TRUE, slide_level=2, includes=includes(in_header="../style/lshtm_header.tex")))
	render("/Users/Tonton/work/projects/ebola_sierra_leone/R/index.Rmd",output_format=html_document(toc=TRUE, fig_width=12, fig_height=8, theme="flatly"))
	# render("/Users/Tonton/work/projects/misc/ebola_sierra_leone/R/analysis.Rmd",output_format=md_document(variant="markdown_github", toc=TRUE, fig_width=12, fig_height=8))

}

main <- function() {

	generate_report()

}

main()