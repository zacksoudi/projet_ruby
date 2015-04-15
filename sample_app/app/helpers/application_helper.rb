module ApplicationHelper
	def titre
		base_titre = "simple app "
		if @titre.nil?
			base_titre
		else
			"#{base_titre} | #{@titre}"
		end
	end
end
