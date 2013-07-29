 # Watch for changes to scripts.
 # @copyright © 2013 Kaplan International.
 # @author Steve Anatai <steve.boland@kaplan.com>

MAIN_JS = "app/js/app.js" unless defined? MAIN_JS
MAIN_COFFEE_SOURCE = "app/js/coffee/*" unless defined? MAIN_COFFEE_SOURCE

def compile_coffee
	done_compiling "coffee" if system "coffee --join #{MAIN_JS} --compile #{MAIN_COFFEE_SOURCE}"
end

def done_compiling(type)
	puts "Compiled " + type + " at " + Time.now.inspect
end

compile_coffee

puts "--- Kaplan Item inspector watchr initialised ---"

watch ("app/js/coffee/*") { compile_coffee }
