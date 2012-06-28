module ApplicationHelper
	def section(name)
		haml_tag(:div, :class => "section") do
			haml_tag(:h2, name)
			haml_tag(:p, :class => "section_contet") do
				yield
			end
		end
	end


	def p(param)
		"<?= #{param} ?>"
	end

	# def w_tabs
	# # 	{:class => "J_TWidget",
	# # 	 :date-widget-type => "Tabs",
	# # 	 :date-widget-config => "{'effect' = 'fade', 'navCls' = 'cate-nav', 'contentCls' = 'cate-list', 'triggerType' = 'click', 'activeTriggerCls' = 'active'
	# # 	 }"
	# # 	}
	# 	".category-content.J_TWidget(date-widget-type=\"Tabs\" date-widget-config=\"{'effect' = 'fade', 'navCls' = 'cate-nav', 'contentCls' = 'cate-list', 'triggerType' = 'click', 'activeTriggerCls' = 'active'}\")"
	# end
end

# - section("zzz") do
# 	just test


# %div.section
# 	%h2 zzz
# 	%p.section_contet
# 		just test