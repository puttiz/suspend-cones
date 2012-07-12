module ApplicationHelper
	# def section(name)
	# 	haml_tag(:div, :class => "section") do
	# 		haml_tag(:h2, name)
	# 		haml_tag(:p, :class => "section_contet") do
	# 			yield
	# 		end
	# 	end
	# end

	def p(param)
		"<?= #{param} ?>"
	end

	def pretty_json(item)
		JSON.pretty_generate(item)
	end

end