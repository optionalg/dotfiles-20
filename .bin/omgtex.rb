#!/usr/bin/env ruby

require 'optparse'

options = {:latexOptions => [ ]}

optparse = OptionParser.new do|opts|

	opts.banner = "Usage: omgtex [options] file.tex"

	options[:openpdf] = false
	opts.on('-o', '--open', 'Open PDF file after rendering') do
		options[:openpdf] = true
	end

	options[:bibtex] = false
	opts.on('-b', '--bibtex', 'Run BibTeX as well') do
		options[:bibtex] = true
	end

	opts.on('-e', '--shell-escape', 'Shell escape-ish') do
		options[:latexOptions].push("-shell-escape")
	end

	opts.on('-h', '--help', 'Display this message') do
		puts opts
		exit
	end

	opts.on('-l COMMAND', '--latex', 'Command to be passed to LateX command') do |l|
		options[:latexOptions].push(l)
	end

end
optparse.parse!

abort("A single input file must be specified") if ARGV.length != 1
file = ARGV.shift

abort("No .tex file was specified") if ( file =~ /(.*?)(\.tex)/ ).nil?
filename = $1
filetype = $2

latexCommand = "pdflatex #{options[:latexOptions].join(' ')}"

file = "'#{file}'"
pdffile = "'#{filename}.pdf'"

cmd = "#{latexCommand} #{file}"

cmd += " && bibtex #{filename}" if options[:bibtex]

cmd += " && #{latexCommand} #{file} && #{latexCommand} #{file}"

cmd += " && open #{pdffile}" if options[:openpdf]

Kernel.exec(cmd)
