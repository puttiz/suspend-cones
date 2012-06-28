module AttributeHelper
	def rbgc(color = "<?= $colors[rand(0, $length)] ?>")
		{ :style => "background-color: #{color}" }
	end

	def phref(url)
		{ :href => "<?= #{url} ?>"}
	end

	def zhref
		{ :rel => "nofollow"}
	end

	# def w_tabs
	# 	{:class => "J_TWidget",
	# 	 :date-widget-type => "Tabs",
	# 	 :date-widget-config => "{'effect' = 'fade', 'navCls' = 'cate-nav', 'contentCls' = 'cate-list', 'triggerType' = 'click', 'activeTriggerCls' = 'active'
	# 	 }"
	# 	}
	# end
end