module ApplicationHelper
    def formatar_data(data)
        # formatting date: Aug, 31 2007 - 9:55PM
        data.strftime("posted on %m, %b %Y - %H:%M")
      end
end
