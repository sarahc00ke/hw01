using Pkg
Pkg.activate(".")
Pkg.instantiate()

using Weave

function compile_report(fname, out_type = "pdf")
    if out_type == "pdf"
        Weave.weave(fname, doctype="pandoc2pdf", template="bee4750.tpl", fig_path="figures")
    elseif out_type == "html"
        Weave.weave(fname, doctype="md2html", fig_path="figures")
    elseif out_type == "html-pandoc"
        Weave.weave(fname, doctype="pandoc2html", template="bee4750.tpl", fig_path="figures")
    else
        throw(ArgumentError("out_type must be pdf, html, or html-pandoc"))
    end 
end

if !isinteractive()
    compile_report(ARGS...)
end